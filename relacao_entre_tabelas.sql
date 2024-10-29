use db_portfolio;

select * from tbl_professor;
select * from tbl_materia;
select * from tbl_aluno;
select * from tbl_endereco_aluno;
select * from tbl_curso;
select * from  tbl_aluno_curso;
select * from tbl_turma;
select * from tbl_materia_turma;
select * from tbl_notas;

SELECT 
    tbl_aluno.nome AS nome_aluno,
    tbl_aluno.cpf AS cpf_aluno,
    tbl_aluno.telefone AS telefone_aluno,
    tbl_endereco_aluno.logradouro AS endereco,
    tbl_endereco_aluno.residencial,
    tbl_endereco_aluno.bairro,
    tbl_endereco_aluno.cidade,
    tbl_endereco_aluno.cep,
    tbl_curso.nome_curso,
    tbl_turma.semestre,
    tbl_materia.nome_materia,
    tbl_materia.carga_horaria,
    tbl_professor.nome_professor AS professor_responsavel,
    tbl_notas.nota AS nota_final
FROM 
    tbl_aluno
JOIN 
    tbl_endereco_aluno ON tbl_aluno.id = tbl_endereco_aluno.id_aluno
JOIN 
    tbl_aluno_curso ON tbl_aluno.id = tbl_aluno_curso.id_aluno
JOIN 
    tbl_curso ON tbl_aluno_curso.id_curso = tbl_curso.id
JOIN 
    tbl_turma ON tbl_turma.id_curso = tbl_curso.id
JOIN 
    tbl_materia_turma ON tbl_turma.id = tbl_materia_turma.id_turma
JOIN 
    tbl_materia ON tbl_materia_turma.id_materia = tbl_materia.id_materia
JOIN 
    tbl_professor ON tbl_materia.id_professor = tbl_professor.id
JOIN 
    tbl_notas ON tbl_notas.id_aluno = tbl_aluno.id AND tbl_notas.id_materia_turma = tbl_materia_turma.id_materia_turma
ORDER BY 
    tbl_aluno.nome, tbl_curso.nome_curso, tbl_turma.semestre;