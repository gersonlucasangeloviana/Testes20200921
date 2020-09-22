SET IDENTITY_INSERT Condominio on

insert into Condominio (Id,Nome,Bairro)
	values 
(1,'Serra Negra', 'Vila Nova'),
(2,'Casa Branca', 'Moema'),
(3,'Bom Recanto', 'Vila Guarani'),
(4,'Imaré', 'Capuava'),
(5,'Andorinha', 'Jardim América')

SET IDENTITY_INSERT Condominio OFF
DBCC CHECKIDENT (Condominio, reseed, 5)

SET IDENTITY_INSERT Familia on
insert into Familia (Id,Nome,Id_Condominio,Apartamento)
	values 
(4,'Campineli',1,712),
(5,'Souza',1,715),
(6,'Gonçalvez',3,640),
(7,'Camargo',3,301),
(8,'Brito',5,507),
(9,'Oliveira',3,530),
(10,'Jovanelli',4,507)

SET IDENTITY_INSERT Familia OFF
DBCC CHECKIDENT (Familia, reseed, 10)

SET IDENTITY_INSERT Morador on
insert into Morador (Id,Id_Familia,Nome,QuantidadeBichosEstimacao)
values
(17,7,'Amanda',1),
(18,5,'Guilherme',0),
(19,4,'Roberta',2),
(20,4,'Ricardo',0),
(21,6,'Giovane',1),
(22,6,'Flavia',1),
(23,8,'Fabiana',3),
(24,8,'Marcio',0),
(25,7,'Roberto',1),
(26,9,'Marcos',4),
(27,4,'Rafael',3),
(28,10,'Bruna',1)

SET IDENTITY_INSERT Morador OFF
DBCC CHECKIDENT (Condominio, reseed, 28)