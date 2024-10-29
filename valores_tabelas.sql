use db_portfolio;

insert into tbl_professor (
	nome_professor,
    cpf,
    telefone,
    email
) values (
	'Sergio Cabral De Melo',
    '19673683660',
    '925347209',
    'sergio@gmail.com'
);
insert into tbl_professor (
	nome_professor,
    cpf,
    telefone,
    email
) values (
	'Evaneide Ferreira',
    '25390573513',
    '952539419',
    'evaneide@gmail.com'
);

select * from tbl_professor;

insert into tbl_materia (
	nome_materia,
    carga_horaria,
    id_professor
) values (
	'Portugues',
    '20H',
    1
);
insert into tbl_materia (
	nome_materia,
    carga_horaria,
    id_professor
) values (
	'Matematica',
    '30H',
    2
);

select * from tbl_materia;


insert into tbl_aluno (
	nome,
    cpf,
    telefone,
    email
) values (
	'Kaique Ferreira Melo',
    '71529404725',
    '953749172',
    'kaique@gmail.com'
);
insert into tbl_aluno (
	nome,
    cpf,
    telefone,
    email
) values (
	'Kamyle Dos Santos Borges',
    '38649273656',
    '274910474',
    'kamylle@gmail.com'
);

select * from tbl_aluno;

insert into tbl_endereco_aluno (
	logradouro,
    residencial,
    bairro,
    cidade,
    cep,
    id_aluno
) values (
	'Rua Laide Barbosa Da Silva',
    '27',
    'Parque Rebouças',
    'São Paulo',
    '05734190',
    1
);
insert into tbl_endereco_aluno (
	logradouro,
    residencial,
    bairro,
    cidade,
    cep,
    id_aluno
) values (
	'Rua Jaracatia',
    '862',
    'Jardim Umarizal',
    'São Paulo',
    '05744280',
    2
);

select * from tbl_endereco_aluno;

insert into tbl_curso (
	nome_curso,
    duracao,
    descricao
) values (
	'Basico',
    '20h',
    'Curso Basico Portugues'
);
insert into tbl_curso (
	nome_curso,
    duracao,
    descricao
) values (
	'Basico',
    '30h',
    'Curso Basico Matematica'
);

select * from tbl_curso;



insert into tbl_aluno_curso (id_aluno, id_curso) values (1, 1);
insert into tbl_aluno_curso (id_aluno, id_curso) values (2, 2);

select * from  tbl_aluno_curso;



insert into tbl_turma (semestre, id_curso) values ('1', 1);
insert into tbl_turma (semestre, id_curso) values ('3', 2);

select * from tbl_turma;


insert into tbl_materia_turma (id_turma, id_materia) values (1, 1);
insert into tbl_materia_turma (id_turma, id_materia) values (2, 2);

select * from tbl_materia_turma;

insert into tbl_notas (nota, id_materia_turma, id_aluno ) values ('10', 1, 1);
insert into tbl_notas (nota, id_materia_turma, id_aluno ) values ('9', 2, 2);

select * from tbl_notas;