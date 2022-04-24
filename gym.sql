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
  CodPP int NOT NULL,
  tipo varchar(30) not null
  );
  
  CREATE TABLE IF NOT EXISTS ExerciciosPorPlano (
  CodPP int PRIMARY KEY auto_increment,
  quantidade int not null,
  CodEx INT not null,
  CodPl INT not null,
  FOREIGN KEY (CodPl) REFERENCES Planos (CodPl) ON DELETE CASCADE,
  FOREIGN KEY (CodEx) REFERENCES Exercicios (CodEx) ON DELETE CASCADE
  );

insert into professores values(1, "Pedro Pinto", "1990/07/12", 916212345, 500.50);
insert into professores values(2, "José Faria", "1995/08/21", 916212345, 500.50);
insert into professores values(3, "Luis Robalo", "1998/09/30", 916212345, 500.50);

insert into clientes values(1, "Bruno Silva", "2004/12/10", "brunomiguelsilva04@hotmail.com", 916277685);
insert into clientes values(2, "Lourenço Oliveira", "2004/02/09", "brunolourenco04@hotmail.com", 916297685);
insert into clientes values(3, "Álvaro Carvalho", "2003/06/18", "alvarocarvalho03@hotmail.com", 916278685);

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

insert into exercicios values(1, "Cadeira extensora", 3, 12, "00:01:00");
insert into exercicios values(2, "Agachamento", 3, 12, "00:01:00");
insert into exercicios values(3, "Afundo", 3, 12, "00:01:00");
insert into exercicios values(4, "Step up", 3, 12, "00:01:00");
insert into exercicios values(5, "Afundo", 3, 12, "00:01:00");

insert into exercicios values(6, "Extensão de quadril em pé", 3, 12, "00:01:00");
insert into exercicios values(7, "Stiff unilateral", 3, 12, "00:01:00");
insert into exercicios values(8, "Cable pendulum", 3, 12, "00:01:00");
insert into exercicios values(9, "Elevação pélvica com joelhos flexionados", 3, 12, "00:01:00");
insert into exercicios values(10, "Extensão de quadril em 45 graus", 3, 12, "00:01:00");
insert into exercicios values(11, "Flexão de joelho deitado", 3, 12, "00:01:00");
insert into exercicios values(12, "Slider leg Curl", 3, 12, "00:01:00");
insert into exercicios values(13, "Extensão de quadril no pulley", 3, 12, "00:01:00");
insert into exercicios values(14, "Elevação pélvica com joelhos estendidos", 3, 12, "00:01:00");
insert into exercicios values(15, "Elevação pélvica com pernas estendidas", 3, 12, "00:01:00");
insert into exercicios values(16, "Mesa flexora (flexão de joelho deitado na máquina)", 3, 12, "00:01:00");

insert into exercicios values(17, "Panturrilha burrinho (gêmeos sentado)", 3, 12, "00:01:00");
insert into exercicios values(18, "Panturrilha em pé unilateral", 3, 12, "00:01:00");
insert into exercicios values(19, "Panturrilha em pé (bilateral)", 3, 12, "00:01:00");

insert into exercicios values(20, "Extensão de quadril", 3, 12, "00:01:00");
insert into exercicios values(21, "Exercício Stiff", 3, 12, "00:01:00");
insert into exercicios values(22, "Leg Press", 3, 12, "00:01:00");
insert into exercicios values(23, "Agachamento 90º", 3, 12, "00:01:00");
insert into exercicios values(24, "Agachamento hack machine", 3, 12, "00:01:00");
insert into exercicios values(25, "Agachamento profundo", 3, 12, "00:01:00");
insert into exercicios values(26, "Agachamento com uma das pernas (búlgaro)", 3, 12, "00:01:00");

insert into exercicios values(27, "Supino declinado com halteres", 3, 12, "00:01:00");
insert into exercicios values(28, "Supino declinado com barra", 3, 12, "00:01:00");
insert into exercicios values(29, "Apoio com step (flexão de braços)", 3, 12, "00:01:00");

insert into exercicios values(30, "Puxador no pulley", 3, 12, "00:01:00");
insert into exercicios values(31, "Remada sentada no pulley", 3, 12, "00:01:00");
insert into exercicios values(32, "Remada pegada pronada", 3, 12, "00:01:00");
insert into exercicios values(33, "Remada no TRX", 3, 12, "00:01:00");
insert into exercicios values(34, "Remada pegada supinada", 3, 12, "00:01:00");
insert into exercicios values(35, "Barra fixa (pegada pronada)", 3, 12, "00:01:00");
insert into exercicios values(36, "Elevação I-Y-T", 3, 12, "00:01:00");
insert into exercicios values(37, "Barra fixa (pegada supinada)", 3, 12, "00:01:00");
insert into exercicios values(38, "Remada Curvada (pegada pronada)", 3, 12, "00:01:00");

insert into exercicios values(39, "Supino reto", 3, 12, "00:01:00");
insert into exercicios values(40, "Desenvolvimento no Smith", 3, 12, "00:01:00");
insert into exercicios values(41, "Peck deck ou voador peitoral", 3, 12, "00:01:00");
insert into exercicios values(42, "Elevação lateral com halteres", 3, 12, "00:01:00");
insert into exercicios values(43, "Elevação lateral no cross over", 3, 12, "00:01:00");
insert into exercicios values(44, "Voador inverso", 3, 12, "00:01:00");
insert into exercicios values(45, "Puxador frente", 3, 12, "00:01:00");
insert into exercicios values(46, "Remada sentado", 3, 12, "00:01:00");
insert into exercicios values(47, "Voador inverso (máquina)", 3, 12, "00:01:00");

insert into exercicios values(48, "Rosca direta no cabo", 3, 12, "00:01:00");
insert into exercicios values(49, "Rosca direta barra", 3, 12, "00:01:00");
insert into exercicios values(50, "Rosca concentrada", 3, 12, "00:01:00");
insert into exercicios values(51, "Barra fixa (pegada supinada)", 3, 12, "00:01:00");
insert into exercicios values(52, "Rosca direta barra w", 3, 12, "00:01:00");
insert into exercicios values(53, "Rosca concentrada no Scott", 3, 12, "00:01:00");
insert into exercicios values(54, "Rosca direta no pulley", 3, 12, "00:01:00");

insert into exercicios values(55, "(flexão de braço fechado (Apoio mãos fechadas)", 3, 12, "00:01:00");
insert into exercicios values(56, "Tríceps coice com halteres", 3, 12, "00:01:00");
insert into exercicios values(57, "Mergulho com mãos apoiadas no banco", 3, 12, "00:01:00");