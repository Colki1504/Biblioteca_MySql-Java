# Biblioteca_MySql-Java
Um projeto para poder adiconar livros(Nome,Autor e valor). Em java com um banco de dados MySql.

*Nesse projeto você tem que ter um banco de dados com as variaveis:
MySql:

Create Schema biblioteca;
Create Table livro(
  id_livro int primary key auto_increment,
  nome_livro varchar(150),
  autor_livro varchar(150),
  valor_livro varchar(150)
);

Obs: eu usei o valor como string, porem pode ser usado e é aconselhavel vc usar double.
