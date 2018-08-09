create database admin; 

use admin; 

create table Usuario(
	Id int not null primary key auto_increment, 
    Nome varchar(150) not null, 
    Login varchar(150) not null, 
    Senha char(60) not null, 
	Tipo_Usuario int not null

)charset utf8;
/* 
diretora, orientadora e vice  full admin 

admin pode add outros admins, pode remover outro admin 

*/

create table Tipo_Usuario(
	Id int not null primary key auto_increment, 
	Nome varchar(30) not null
)charset utf8;


ALTER TABLE USUARIO ADD FOREIGN KEY (Tipo_Usuario) references Tipo_Usuario(Id); 

/* 
if aluno, vai ter alguma coisa de controle e as próximas etapas 
*/ 
create table perguntas_respostas(
	Id int not null primary key auto_increment

); 

create table desempenho(
	Id int not null primary key auto_increment, 
    Id_Aluno int not null, 
    
    
); 