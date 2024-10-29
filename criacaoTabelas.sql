show databases;

create database db_portfolio;

use db_portfolio;

create table tbl_professor (
	id int not null primary key auto_increment,
    nome_professor varchar(100),
    cpf varchar(18),
    telefone varchar(45),
    email varchar(100)
);


create table tbl_materia (
	id_materia int not null primary key auto_increment,
    nome_materia varchar(100),
    carga_horaria varchar(45),
    id_professor int not null,
    
    constraint FK_Professor_Materia
    foreign key (id_professor)
    references tbl_professor(id)
);


create table tbl_aluno (
	id int not null primary key auto_increment,
    nome varchar(100),
    cpf varchar(18),
    telefone varchar(45),
    email varchar(100)
);

create table tbl_endereco_aluno (
	id_endereco_aluno int not null primary key auto_increment,
    logradouro varchar(45),
    residencial varchar(45),
    bairro varchar(45),
    cidade varchar(45),
    cep varchar(45),
    id_aluno int not null,
    
    constraint FK_Cliente_Endereco_Aluno
    foreign key (id_aluno)
    references tbl_aluno(id)
);



create table tbl_curso (
	id int not null primary key auto_increment,
    nome_curso varchar(45),
    duracao varchar(45),
    descricao text
);


create table tbl_aluno_curso (
	id int not null primary key auto_increment,
    id_aluno int not null,
    id_curso int not null,
    
    constraint FK_Aluno_Aluno_curso
    foreign key (id_aluno)
    references tbl_aluno(id),
    
    constraint FK_Curso_Aluno_Curso
    foreign key (id_curso)
    references tbl_curso(id)
);

create table tbl_turma (
	id int not null primary key auto_increment,
    semestre float,
    id_curso int not null,
    
    constraint FK_Curso_Turma
    foreign key (id_curso)
    references tbl_curso(id)
);





create table tbl_materia_turma (
	id_materia_turma int not null primary key auto_increment,
    id_turma int not null,
    id_materia int not null,
    
    constraint FK_Turma_Materia_Turma
    foreign key (id_turma)
    references tbl_turma(id),
    
    constraint FK_Materia_Materia_Turma
    foreign key (id_materia)
    references tbl_materia(id_materia)
    
    
);


create table tbl_notas (
	id int not null primary key auto_increment,
    nota float,
    id_materia_turma int not null,
    id_aluno int not null,
    
    constraint FK_Materia_turma_Notas
    foreign key (id_materia_turma)
    references tbl_materia_turma(id_materia_turma),
    
    constraint FK_Aluno_Notas
    foreign key (id_aluno)
    references tbl_aluno(id)
);