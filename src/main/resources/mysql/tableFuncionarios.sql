create table funcionarios (
	 id_func int primary key auto_increment unique,
     cpf varchar(15) ,
     nome varchar(90) ,
     data_nasc varchar(12) , 
	 genero varchar(10),
     email varchar(90),
     telefone varchar(15) ,
     nacionalidade varchar(25) default("Brasileira(o)"),
     endereco varchar(45),
     uf varchar(45),
     cep varchar(15)  ,
     categoria int (10) ,
     nivel_func int(3),
     senha varchar(110),
     matricula varchar(11) unique ,
     FOREIGN KEY (categoria)  REFERENCES Categoria(id_categoria),
     FOREIGN KEY (nivel_func) REFERENCES Nivel(id_nivel)
     );
     
     insert into funcionarios(cpf, nome, email, matricula, senha, nivel_func) 
     values( '163.908.262-06', 'ADM', 'adm@gmail.com', '2020DHBR', '$2a$12$W3/XT68P1GnBUxtyi9/Nre52VtRFws51LDvNVpvD/Z.v4Pxg/6.r.', 1);
     
     select * from funcionarios;