DROP DATABASE IF EXISTS gym;
CREATE DATABASE IF NOT EXISTS gym DEFAULT CHARACTER SET utf8 COLLATE = utf8_general_ci;

SET NAMES utf8;
SET character_set_connection=utf8;
SET character_set_client=utf8;
SET character_set_results=utf8;

USE gym;

CREATE TABLE IF NOT EXISTS professores (
  CodP INT PRIMARY KEY auto_increment,
  nome VARCHAR(30) not null,
  dataNascimento date not null,
  contacto VARCHAR(30) not null,
  salario decimal(10,2) not null
  );
  
  CREATE TABLE IF NOT EXISTS clientes (
  CodC INT PRIMARY KEY auto_increment,
  nome VARCHAR(30) not null,
  dataNascimento date not null,
  email VARCHAR(50) not null,
  contacto VARCHAR(30) not null
  );
  
  CREATE TABLE IF NOT EXISTS modalidades (
  CodM INT PRIMARY KEY auto_increment,
  nome VARCHAR(30) not null,
  valor decimal(10,2) not null
  );
  
  CREATE TABLE IF NOT EXISTS salas (
  NumeroSala INT PRIMARY KEY auto_increment,
  nome VARCHAR(30) not null,
  limite INT(60) not null
  );
  
  CREATE TABLE IF NOT EXISTS aulaGrupo (
  CodAula INT PRIMARY KEY auto_increment,
  datas DATE not null,
  hora TIME not null,
  NumeroSala int not null,
  CodP int not null,
  CodM int not null,
  FOREIGN KEY (NumeroSala) REFERENCES salas (NumeroSala) ON DELETE CASCADE,
  FOREIGN KEY (CodM) REFERENCES modalidades (CodM) ON DELETE CASCADE,
  FOREIGN KEY (CodP) REFERENCES professores (CodP) ON DELETE CASCADE
  );
  
  CREATE TABLE IF NOT EXISTS clientesPorAula (
  CodCA INT PRIMARY KEY auto_increment,
  CodC INT not null,
  CodAula int not null,
  FOREIGN KEY (CodAula) REFERENCES aulaGrupo (CodAula) ON DELETE CASCADE,
  FOREIGN KEY (CodC) REFERENCES clientes (CodC) ON DELETE CASCADE  
  );
  
  CREATE TABLE IF NOT EXISTS musculos (
  CodM INT PRIMARY KEY auto_increment,
  nome VARCHAR(30) not null
  );
  
  CREATE TABLE IF NOT EXISTS Exercicios ( 
  CodEx INT PRIMARY KEY auto_increment,
  nome varchar(50) not null,
  series int not null,
  repeticoes int not null,
  descanso time not null
  );
  
  CREATE TABLE IF NOT EXISTS musculosPorExercícios (
  CodME INT PRIMARY KEY auto_increment,
  quantidade int not null,
  CodM INT not null,
  CodEx INT NOT NULL,
  FOREIGN KEY (CodEx) REFERENCES Exercicios (CodEx) ON DELETE CASCADE,
  FOREIGN KEY (CodM) REFERENCES musculos (CodM) ON DELETE CASCADE
  );
  
  CREATE TABLE IF NOT EXISTS Planos (
  CodPl int PRIMARY KEY auto_increment,
  CodEx int NOT NULL,
  quantidade int not null,
  nome VARCHAR(30) not null,
  FOREIGN KEY (CodEx) REFERENCES Exercicios (CodEx) ON DELETE CASCADE
  );
  
  CREATE TABLE IF NOT EXISTS ExerciciosPorPlano (
  CodPP int PRIMARY KEY auto_increment,
  CodEx INT not null,
  FOREIGN KEY (CodEx) REFERENCES Exercicios (CodEx) ON DELETE CASCADE
  );

insert into professores values(null, "Pedro Pinto", "1990/07/12", 916212345, 500.50);
insert into professores values(null, "José Faria", "1995/08/21", 916212345, 500.50);
insert into professores values(null, "Luis Robalo", "1998/09/30", 916212345, 500.50);
insert into professores values(null, "Bruno Felgueiras", "1990/07/12", 916212345, 500.50);
insert into professores values(null, "Tony das Bicicletas", "1995/08/21", 916212345, 500.50);
insert into professores values(null, "Luís Pedreiro", "1998/09/30", 916212345, 500.50);
insert into professores values(null, "Nelson Gomes", "1990/07/12", 916212345, 500.50);
insert into professores values(null, "João Pedrosa", "1995/08/21", 916212345, 500.50);
insert into professores values(null, "Rafael Faneca", "1998/09/30", 916212345, 500.50);
insert into professores values(null, "Antonio Marradas", "1990/07/12", 916212345, 500.50);
insert into professores values(null, "João Angola", "1995/08/21", 916212345, 500.50);
insert into professores values(null, "Zé Angola", "1998/09/30", 916212345, 500.50);
insert into professores values(null, "Danso Rodrigues", "1990/07/12", 916212345, 500.50);
insert into professores values(null, "Adolfo Manel", "1995/08/21", 916212345, 500.50);
insert into professores values(null, "Helder Pente", "1998/09/30", 916212345, 500.50);
insert into professores values(null, "Francisco Farreco", "1990/07/12", 916212345, 500.50);
insert into professores values(null, "Julia Palha", "1995/08/21", 916212345, 500.50);
insert into professores values(null, "Catarina Magalhães", "1998/09/30", 916212345, 500.50);

insert into clientes values(null, "Bruno Silva", "2004/12/10", "brunomiguelsilva04@hotmail.com", 916277685);
insert into clientes values(null, "Lourenço Oliveira", "2004/02/09", "brunolourenco04@hotmail.com", 916297685);
insert into clientes values(null, "Álvaro Carvalho", "2003/06/18", "alvarocarvalho03@hotmail.com", 916278685);
insert into clientes values(null, "Chico Pilotas", "2004/12/10", "chicopilotas010@live.com.pt", 916277685);
insert into clientes values(null, "Leandro Casa Nova", "2004/02/09", "leandronova@gmail.com", 916297685);
insert into clientes values(null, "Rute Marlene", "2003/06/18", "alvarocarvalho03@hotmail.com", 916278685);
insert into clientes values(null, "Kim Roscas", "2004/12/10", "brunomiguelsilva04@hotmail.com", 916277685);
insert into clientes values(null, "Mariana Abreu", "2004/02/09", "brunolourenco04@hotmail.com", 916297685);
insert into clientes values(null, "Manuel Bertão", "2003/06/18", "alvarocarvalho03@hotmail.com", 916278685);
insert into clientes values(null, "Guita Pimpolho", "2004/12/10", "brunomiguelsilva04@hotmail.com", 916277685);
insert into clientes values(null, "Angelica Flores", "2004/02/09", "brunolourenco04@hotmail.com", 916297685);
insert into clientes values(null, "Raimunda Pires", "2003/06/18", "alvarocarvalho03@hotmail.com", 916278685);
insert into clientes values(null, "Valentina Concertina", "2004/12/10", "brunomiguelsilva04@hotmail.com", 916277685);
insert into clientes values(null, "Teresa Silva", "2004/02/09", "brunolourenco04@hotmail.com", 916297685);
insert into clientes values(null, "Filipe Pontes", "2003/06/18", "alvarocarvalho03@hotmail.com", 916278685);
insert into clientes values(null, "Quim Barreiros", "2004/12/10", "brunomiguelsilva04@hotmail.com", 916277685);
insert into clientes values(null, "Luis Araujo", "2004/02/09", "brunolourenco04@hotmail.com", 916297685);
insert into clientes values(null, "Filomena Sofia", "2003/06/18", "alvarocarvalho03@hotmail.com", 916278685);

insert into modalidades values(1, "spinning", 30.00);
insert into modalidades values(2, "core", 30.00);
insert into modalidades values(3, "trx", 30.00);
insert into modalidades values(4, "localizada", 30.00);
insert into modalidades values(5, "karaté", 30.00);
insert into modalidades values(6, "crosstraining", 30.00);
insert into modalidades values(7, "mob", 30.00);
insert into modalidades values(8, "pilates", 30.00);
insert into modalidades values(9, "kombat", 30.00);
insert into modalidades values(10, "gap", 30.00);
insert into modalidades values(11, "indoorwalking", 30.00);
insert into modalidades values(12, "musculaçao", 30.00);

insert into salas values(1, "estudio bordeaux", 45);
insert into salas values(2, "musculação", 15);
insert into salas values(3, "estúdio cinza", 30);
insert into salas values(4, "estúdio zen", 60);

insert into musculos values(1, "Ombros");
insert into musculos values(2, "Peitoral");
insert into musculos values(3, "Bíceps");
insert into musculos values(4, "Oblíquos");
insert into musculos values(5, "Recto Abdominal");
insert into musculos values(6, "Quadríceps");
insert into musculos values(7, "Trapézio");
insert into musculos values(8, "Tríceps");
insert into musculos values(9, "Dorsal");
insert into musculos values(10, "Glúteos");
insert into musculos values(11, "Isquiotibiais");
insert into musculos values(12, "Gémeos");

insert into exercicios values(1, "Cadeira extensora", 1, 12, "00:01:00");
insert into exercicios values(2, "Agachamento", 3, 15, "00:01:00");
insert into exercicios values(3, "Afundo", 2, 12, "00:01:00");
insert into exercicios values(4, "Step up", 3, 12, "00:01:00");
insert into exercicios values(5, "Extensão de quadril em pé", 3, 15, "00:01:00");

insert into musculosPorExercícios values(null, 1, 6, 1);
insert into musculosPorExercícios values(null, 2, 6, 2);
insert into musculosPorExercícios values(null, 2, 10, 2);
insert into musculosPorExercícios values(null, 1, 6, 3);
insert into musculosPorExercícios values(null, 3, 6, 4);
insert into musculosPorExercícios values(null, 3, 10, 4);
insert into musculosPorExercícios values(null, 3, 11, 4);
insert into musculosPorExercícios values(null, 2, 10, 5);
insert into musculosPorExercícios values(null, 2, 11, 5);


insert into exercicios values(6, "Stiff unilateral", 1, 12, "00:01:00");
insert into exercicios values(7, "Cable pendulum", 3, 15, "00:01:00");
insert into exercicios values(8, "Elevação pélvica com joelhos flexionados", 2, 12, "00:01:00");
insert into exercicios values(9, "Extensão de quadril em 45 graus", 3, 12, "00:01:00");
insert into exercicios values(10, "Flexão de joelho deitado", 3, 15, "00:01:00");

insert into musculosPorExercícios values(null, 2, 10, 6);
insert into musculosPorExercícios values(null, 2, 11, 6);
insert into musculosPorExercícios values(null, 3, 1, 7);
insert into musculosPorExercícios values(null, 3, 8, 7);
insert into musculosPorExercícios values(null, 3, 9, 7);
insert into musculosPorExercícios values(null, 3, 9, 8);
insert into musculosPorExercícios values(null, 3, 10, 8);
insert into musculosPorExercícios values(null, 3, 5, 8);
insert into musculosPorExercícios values(null, 2, 6, 9);
insert into musculosPorExercícios values(null, 2, 10, 9);
insert into musculosPorExercícios values(null, 2, 10, 10);
insert into musculosPorExercícios values(null, 2, 11, 10);


insert into exercicios values(11, "Slider leg Curl", 1, 12, "00:01:00");
insert into exercicios values(12, "Extensão de quadril no pulley", 3, 15, "00:01:30");
insert into exercicios values(13, "Elevação pélvica com joelhos estendidos", 2, 12, "00:02:00");
insert into exercicios values(14, "Elevação pélvica com pernas estendidas", 3, 12, "00:01:00");
insert into exercicios values(15, "Mesa flexora (flexão de joelho deitado na máquina)", 3, 15, "00:01:30");

insert into musculosPorExercícios values(null, 1, 11, 11);
insert into musculosPorExercícios values(null, 2, 10, 12);
insert into musculosPorExercícios values(null, 2, 11, 12);
insert into musculosPorExercícios values(null, 3, 6, 13);
insert into musculosPorExercícios values(null, 3, 10, 13);
insert into musculosPorExercícios values(null, 3, 11, 13);
insert into musculosPorExercícios values(null, 3, 6, 14);
insert into musculosPorExercícios values(null, 3, 10, 14);
insert into musculosPorExercícios values(null, 3, 11, 14);
insert into musculosPorExercícios values(null, 1, 11, 15);


insert into exercicios values(16, "Panturrilha burrinho (gêmeos sentado)", 1, 12, "00:02:00");
insert into exercicios values(17, "Panturrilha em pé unilateral", 3, 12, "00:01:00");
insert into exercicios values(18, "Panturrilha em pé (bilateral)", 2, 15, "00:01:30");

insert into musculosPorExercícios values(null, 1, 12, 16);
insert into musculosPorExercícios values(null, 1, 12, 17);
insert into musculosPorExercícios values(null, 1, 12, 18);


insert into exercicios values(19, "Extensão de quadril", 3, 12, "00:02:00");
insert into exercicios values(20, "Exercício Stiff", 3, 12, "00:01:00");
insert into exercicios values(21, "Leg Press", 1, 12, "00:01:30");
insert into exercicios values(22, "Agachamento 90º", 3, 12, "00:02:00");
insert into exercicios values(23, "Agachamento hack machine", 2, 12, "00:01:00");
insert into exercicios values(24, "Agachamento profundo", 3, 12, "00:01:30");
insert into exercicios values(25, "Agachamento com uma das pernas (búlgaro)", 3, 15, "00:02:00");

insert into musculosPorExercícios values(NULL, 1, 11, 19);
insert into musculosPorExercícios values(NULL, 2, 10, 20);
insert into musculosPorExercícios values(NULL, 2, 11, 20);
insert into musculosPorExercícios values(NULL, 3, 6, 21);
insert into musculosPorExercícios values(NULL, 3, 10, 21);
insert into musculosPorExercícios values(NULL, 3, 11, 21);
insert into musculosPorExercícios values(NULL, 3, 10, 22);
insert into musculosPorExercícios values(NULL, 3, 11, 22);
insert into musculosPorExercícios values(NULL, 3, 6, 22);
insert into musculosPorExercícios values(NULL, 3, 10, 23);
insert into musculosPorExercícios values(NULL, 3, 11, 23);
insert into musculosPorExercícios values(NULL, 3, 6, 23);
insert into musculosPorExercícios values(NULL, 3, 10, 24);
insert into musculosPorExercícios values(NULL, 3, 11, 24);
insert into musculosPorExercícios values(NULL, 3, 6, 24);
insert into musculosPorExercícios values(NULL, 3, 1, 25);
insert into musculosPorExercícios values(NULL, 3, 11, 25);
insert into musculosPorExercícios values(NULL, 3, 6, 25);


insert into exercicios values(26, "Supino declinado com halteres", 1, 12, "00:01:00");
insert into exercicios values(27, "Supino declinado com barra", 3, 15, "00:01:30");
insert into exercicios values(28, "Apoio com step (flexão de braços)", 2, 12, "00:02:00");

insert into musculosPorExercícios values(null, 3, 1, 26);
insert into musculosPorExercícios values(null, 3, 2, 26);
insert into musculosPorExercícios values(null, 3, 8, 26);
insert into musculosPorExercícios values(null, 3, 1, 27);
insert into musculosPorExercícios values(null, 3, 2, 27);
insert into musculosPorExercícios values(null, 3, 8, 27);
insert into musculosPorExercícios values(null, 3, 1, 28);
insert into musculosPorExercícios values(null, 3, 2, 28);
insert into musculosPorExercícios values(null, 3, 8, 28);


insert into exercicios values(29, "Puxador no pulley", 3, 12, "00:01:00");
insert into exercicios values(30, "Remada sentada no pulley", 3, 15, "00:01:30");
insert into exercicios values(31, "Remada pegada pronada", 1, 15, "00:02:00");
insert into exercicios values(32, "Remada no TRX", 3, 12, "00:01:00");
insert into exercicios values(33, "Remada pegada supinada", 2, 12, "00:01:30");
insert into exercicios values(34, "Barra fixa (pegada pronada)", 3, 15, "00:02:00");
insert into exercicios values(35, "Elevação I-Y-T", 3, 12, "00:01:00");
insert into exercicios values(36, "Barra fixa (pegada supinada)", 3, 15, "00:01:30");
insert into exercicios values(37, "Remada Curvada (pegada pronada)", 1, 12, "00:02:00");

insert into musculosPorExercícios values(NULL, 2, 3, 29);
insert into musculosPorExercícios values(NULL, 2, 9, 29);
insert into musculosPorExercícios values(NULL, 4, 9, 30);
insert into musculosPorExercícios values(NULL, 4, 1, 30);
insert into musculosPorExercícios values(NULL, 4, 7, 30);
insert into musculosPorExercícios values(NULL, 4, 3, 30);
insert into musculosPorExercícios values(NULL, 2, 3, 31);
insert into musculosPorExercícios values(NULL, 2, 9, 31);
insert into musculosPorExercícios values(NULL, 2, 3, 32);
insert into musculosPorExercícios values(NULL, 2, 9, 32);
insert into musculosPorExercícios values(NULL, 2, 3, 33);
insert into musculosPorExercícios values(NULL, 2, 9, 33);
insert into musculosPorExercícios values(NULL, 3, 3, 34);
insert into musculosPorExercícios values(NULL, 3, 9, 34);
insert into musculosPorExercícios values(NULL, 3, 7, 34);
insert into musculosPorExercícios values(NULL, 3, 3, 35);
insert into musculosPorExercícios values(NULL, 3, 9, 35);
insert into musculosPorExercícios values(NULL, 3, 1, 35);
insert into musculosPorExercícios values(NULL, 3, 3, 36);
insert into musculosPorExercícios values(NULL, 3, 9, 36);
insert into musculosPorExercícios values(NULL, 3, 7, 36);
insert into musculosPorExercícios values(NULL, 2, 3, 37);
insert into musculosPorExercícios values(NULL, 2, 9, 37);


insert into exercicios values(38, "Supino reto", 3, 12, "00:01:00");
insert into exercicios values(39, "Desenvolvimento no Smith", 2, 12, "00:01:30");
insert into exercicios values(40, "Peck deck ou voador peitoral", 3, 15, "00:02:00");
insert into exercicios values(41, "Elevação lateral com halteres", 3, 12, "00:01:00");
insert into exercicios values(42, "Elevação lateral no cross over", 1, 12, "00:01:30");
insert into exercicios values(43, "Voador inverso", 3, 12, "00:02:00");
insert into exercicios values(44, "Puxador frente", 2, 12, "00:01:00");
insert into exercicios values(45, "Remada sentado", 3, 12, "00:01:30");
insert into exercicios values(46, "Voador inverso (máquina)", 3, 15, "00:02:00");

insert into musculosPorExercícios values(null, 3, 8, 38);
insert into musculosPorExercícios values(null, 3, 1, 38);
insert into musculosPorExercícios values(null, 3, 2, 38);
insert into musculosPorExercícios values(null, 1, 1, 39);
insert into musculosPorExercícios values(null, 2, 1, 40);
insert into musculosPorExercícios values(null, 2, 2, 40);
insert into musculosPorExercícios values(null, 2, 1, 41);
insert into musculosPorExercícios values(null, 2, 7, 41);
insert into musculosPorExercícios values(null, 2, 1, 42);
insert into musculosPorExercícios values(null, 2, 7, 42);
insert into musculosPorExercícios values(null, 2, 1, 43);
insert into musculosPorExercícios values(null, 2, 7, 43);
insert into musculosPorExercícios values(null, 4, 1, 44);
insert into musculosPorExercícios values(null, 4, 9, 44);
insert into musculosPorExercícios values(null, 4, 7, 44);
insert into musculosPorExercícios values(null, 4, 3, 44);
insert into musculosPorExercícios values(null, 3, 1, 45);
insert into musculosPorExercícios values(null, 3, 8, 45);
insert into musculosPorExercícios values(null, 3, 7, 45);
insert into musculosPorExercícios values(null, 2, 1, 46);
insert into musculosPorExercícios values(null, 2, 7, 46);


insert into exercicios values(47, "Rosca direta no cabo", 1, 12, "00:01:00");
insert into exercicios values(48, "Rosca direta barra", 3, 12, "00:01:30");
insert into exercicios values(49, "Rosca concentrada", 2, 15, "00:02:00");
insert into exercicios values(50, "Barra fixa (pegada supinada)", 3, 12, "00:01:00");
insert into exercicios values(51, "Rosca direta barra W", 3, 12, "00:01:30");
insert into exercicios values(52, "Rosca concentrada no Scott", 1, 12, "00:02:00");
insert into exercicios values(53, "Rosca direta no pulley", 3, 15, "00:01:00");

insert into musculosPorExercícios values(null, 2, 3, 47);
insert into musculosPorExercícios values(null, 2, 8, 47);
insert into musculosPorExercícios values(null, 2, 3, 48);
insert into musculosPorExercícios values(null, 2, 8, 48);
insert into musculosPorExercícios values(null, 2, 3, 49);
insert into musculosPorExercícios values(null, 2, 8, 49);
insert into musculosPorExercícios values(null, 4, 1, 50);
insert into musculosPorExercícios values(null, 4, 3, 50);
insert into musculosPorExercícios values(null, 4, 7, 50);
insert into musculosPorExercícios values(null, 4, 8, 50);
insert into musculosPorExercícios values(null, 2, 3, 51);
insert into musculosPorExercícios values(null, 2, 8, 51);
insert into musculosPorExercícios values(null, 2, 3, 52);
insert into musculosPorExercícios values(null, 2, 8, 52);
insert into musculosPorExercícios values(null, 2, 3, 53);
insert into musculosPorExercícios values(null, 2, 8, 53);


insert into exercicios values(54, "Flexão de braço fechado (Apoio mãos fechadas)", 2, 12, "00:01:30");
insert into exercicios values(55, "Tríceps coice com halteres", 3, 15, "00:02:00");
insert into exercicios values(56, "Mergulho com mãos apoiadas no banco", 3, 12, "00:01:00");

insert into musculosPorExercícios values(null, 2, 2, 54);
insert into musculosPorExercícios values(null, 2, 8, 54);
insert into musculosPorExercícios values(null, 1, 8, 55);
insert into musculosPorExercícios values(null, 1, 8, 56);


insert into ExerciciosPorPlano values(null, 1);
insert into ExerciciosPorPlano values(null, 2);
insert into ExerciciosPorPlano values(null, 3);
insert into ExerciciosPorPlano values(null, 4);
insert into ExerciciosPorPlano values(null, 5);
insert into ExerciciosPorPlano values(null, 6);
insert into ExerciciosPorPlano values(null, 7);

INSERT into planos VALUES(null, 1, 7, "Treino Pernas");
INSERT into planos VALUES(null, 2, 7, "Treino Pernas");
INSERT into planos VALUES(null, 3, 7, "Treino Pernas");
INSERT into planos VALUES(null, 4, 7, "Treino Pernas");
INSERT into planos VALUES(null, 5, 7, "Treino Pernas");
INSERT into planos VALUES(null, 6, 7, "Treino Pernas");
INSERT into planos VALUES(null, 7, 7, "Treino Pernas");


INSERT into aulaGrupo VALUES(null, "2022/04/28", "10:00:00", 1, 2, 1);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "10:00:00", 2, 3, 2);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "10:00:00", 3, 4, 8);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "10:00:00", 4, 5, 5);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "11:00:00", 1, 1, 3);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "11:00:00", 2, 6, 4);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "11:00:00", 3, 7, 6);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "11:00:00", 4, 8, 7);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "12:00:00", 1, 9, 9);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "12:00:00", 2, 11, 12);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "12:00:00", 3, 10, 10);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "12:00:00", 4, 12, 11);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "13:00:00", 1, 14, 1);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "13:00:00", 2, 13, 2);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "13:00:00", 3, 16, 3);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "13:00:00", 4, 15, 4);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "14:00:00", 1, 18, 8);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "14:00:00", 2, 17, 7);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "14:00:00", 3, 1, 6);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "14:00:00", 4, 2, 5);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "15:00:00", 1, 6, 9);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "15:00:00", 2, 5, 10);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "15:00:00", 3, 4, 11);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "15:00:00", 4, 3, 12);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "16:00:00", 1, 10, 4);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "16:00:00", 2, 9, 3);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "16:00:00", 3, 8, 2);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "16:00:00", 4, 7, 1);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "17:00:00", 1, 11, 5);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "17:00:00", 2, 12, 6);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "17:00:00", 3, 13, 7);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "17:00:00", 4, 14, 8);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "18:00:00", 1, 18, 12);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "18:00:00", 2, 17, 11);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "18:00:00", 3, 16, 10);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "18:00:00", 4, 15, 9);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "19:00:00", 1, 1, 1);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "19:00:00", 2, 2, 2);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "19:00:00", 3, 3, 3);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "19:00:00", 4, 4, 4);

INSERT into aulaGrupo VALUES(null, "2022/04/28", "20:00:00", 1, 8, 8);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "20:00:00", 2, 7, 7);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "20:00:00", 3, 6, 6);
INSERT into aulaGrupo VALUES(null, "2022/04/28", "20:00:00", 4, 5, 5);


insert into clientesPorAula values(null, 1, 1);
insert into clientesPorAula values(null, 2, 1);
insert into clientesPorAula values(null, 3, 1);