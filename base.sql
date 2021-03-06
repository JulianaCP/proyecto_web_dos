--drop database proyecto_web_dos
--use master


create database proyecto_web_dos;
use proyecto_web_dos;

go


------------------------------------------------------------------------------------------------------
------------------------					TABLAS						-----------------------------
------------------------------------------------------------------------------------------------------

CREATE TABLE Confederacion(
	id INT IDENTITY PRIMARY KEY,
	nombreConfederacion VARCHAR(50),
	cupos int
);

CREATE TABLE Equipo(
	nombreEquipo VARCHAR(100) PRIMARY KEY,
	puntos int NOT NULL,
	bandera VARCHAR(100) NOT NULL,
	activado BIT NOT NULL,
	idConfederacion INT NOT NULL,
	CONSTRAINT FK_idConfederacion_Equipo FOREIGN KEY(idConfederacion) REFERENCES Confederacion ON DELETE CASCADE ON UPDATE CASCADE	
);

CREATE TABLE Usuario(
	nombre	VARCHAR(100) PRIMARY KEY,
	apellido1 VARCHAR(100) NOT NULL,
	apellido2 VARCHAR(100) NOT NULL,
	edad INT NOT NULL,
	fechaRegistro	DATETIME DEFAULT GETDATE(),
	nombreUsuario	VARCHAR(200) NOT NULL,
	contrasenna		VARCHAR(100) NOT NULL
);

create table sorteoGuardado(
	id INT IDENTITY PRIMARY KEY,
	nombreSorteo VARCHAR(100),
	posicion VARCHAR(50),
	nombreEquipo VARCHAR(100)
);

CREATE TABLE guardarEquipoUsuario(
	nombreSorteo VARCHAR(100) PRIMARY KEY,
	nombreUsuario	VARCHAR(100),
	logo VARCHAR(200), 
	fecha varchar(50),	
);

------------------------------------------------------------------------------------------------------
------------------------					INSERTS					-----------------------------
------------------------------------------------------------------------------------------------------

INSERT INTO Usuario(nombre,apellidO1,apellido2,edad,nombreUsuario,contrasenna)
	VALUES
		('Ana', 'Rosales', 'Flores',20,'Flores','1234'),
		('Juliana', 'Campos', 'Parajeles',20,'JCP','123');


INSERT INTO Confederacion(nombreConfederacion,cupos)
	VALUES
		('CAF',5),
		('CONCACAF',4),
		('CONMEBOL',5),
		('OFC',1),
		('AFC',5),		
		('UEFA',19),
		('Organizador',1);

INSERT INTO Equipo(nombreEquipo,puntos,bandera,activado,idConfederacion)
	VALUES		
		('Alemania',1631,'img/imagenes_ranking/1_Alemania.png',1,6),
		('Brasil',1619,'img/imagenes_ranking/2_Brasil.png',1,3),
		('Portugal',1446,'img/imagenes_ranking/3_Portugal.png',1,6),
		('Argentina',1145,'img/imagenes_ranking/4_Argentina.png',1,3),
		('B�lgica',1333,'img/imagenes_ranking/5_Belgica.png',1,6),
		('Polonia',1323,'img/imagenes_ranking/6_Polonia.png',1,6),
		('Francia',1226,'img/imagenes_ranking/7_Francia.png',1,6),
		('Espa�a',1218,'img/imagenes_ranking/8_Espana.png',1,6),
		('Chile',1173,'img/imagenes_ranking/9_Chile.png',1,3),
		('Peru',1160,'img/imagenes_ranking/10_Peru.png',1,3),
		('Suiza',1134,'img/imagenes_ranking/11_Suiza.png',1,6),
		('Inglaterra',1116,'img/imagenes_ranking/12_Inglaterra.png',1,6),
		('Colombia',1095,'img/imagenes_ranking/13_Colombia.png',1,3),
		('Gales',1072,'img/imagenes_ranking/14_Gales.png',1,6),
		('Italia',1066,'img/imagenes_ranking/15_Italia.png',1,6),
		('M�xico',1060,'img/imagenes_ranking/16_Mexico.png',1,2),
		('Uruguay',1034,'img/imagenes_ranking/17_Uruguay.png',1,3),
		('Croacia',1013,'img/imagenes_ranking/18_Croacia.png',1,6),
		('Dinamarca',1001,'img/imagenes_ranking/19_Dinamarca.png',1,6),
		('Pa�ses Bajos',931,'img/imagenes_ranking/20_Paises_Bajos.png',1,6),
		('Islandia',920,'img/imagenes_ranking/21_Islandia.png',1,6),
		('Costa Rica',914,'img/imagenes_ranking/22_Costa_Rica.png',1,2),
		('Irlanda del Norte',889,'img/imagenes_ranking/23_Irlanda_del_Norte.png',1,6),
		('Eslovaquia',885,'img/imagenes_ranking/24_Eslovaquia.png',1,6),
		('Suecia',872,'img/imagenes_ranking/25_Suecia.png',1,6),
		('Rep�blica de Irlanda',866,'img/imagenes_ranking/26_Republica_De_Irlanda.png',1,6),
		('EEUU',843,'img/imagenes_ranking/27_EEUU.png',1,2),
		('Tunez',834,'img/imagenes_ranking/28_Tunez.png',1,1),
		('Escocia',821,'img/imagenes_ranking/29_Escocia.png',1,6),
		('Egipto',818,'img/imagenes_ranking/30_Egipto.png',1,1),
		('Ucrania',818,'img/imagenes_ranking/31_Ucrania.png',1,6),
		('Senegal',815,'img/imagenes_ranking/32_Senegal.png',1,1),
		('Turquia',807,'img/imagenes_ranking/33_Turquia.png',1,6),
		('Iran',784,'img/imagenes_ranking/34_Iran.png',1,5),
		('RD del Congo',751,'img/imagenes_ranking/35_RD_Del_Congo.png',1,1),
		('Paraguay',750,'img/imagenes_ranking/36_Paraguay.png',1,3),
		('Bulgaria',750,'img/imagenes_ranking/37_Bulgaria.png',1,6),
		('Serbia',748,'img/imagenes_ranking/38_Serbia.png',1,6),
		('Austria',745,'img/imagenes_ranking/39_Austria.png',1,6),
		('Bosnia y Herzegovina',744,'img/imagenes_ranking/40_Bosnia_Herzegovina.png',1,6),
		('Nigeria',721,'img/imagenes_ranking/41_Nigeria.png',1,1),
		('Camer�n',718,'img/imagenes_ranking/42_Camerun.png',1,1),
		('Australia',714,'img/imagenes_ranking/43_Australia.png',1,5),
		('Jap�n',711,'img/imagenes_ranking/44_Japon.png',1,5),
		('Ruman�a',705,'img/imagenes_ranking/45_Rumania.png',1,6),
		('Rep�blica Checa',699,'img/imagenes_ranking/46_Republica_Checa.png',1,6),
		('Grecia',682,'img/imagenes_ranking/47_Grecia.png',1,6),
		('Marruecos',680,'img/imagenes_ranking/48_Marruecos.png',1,1),
		('Panam�',670,'img/imagenes_ranking/49_Panama.png',1,2),
		('Bolivia',664,'img/imagenes_ranking/50_Bolivia.png',1,3),
		('Venezuela',663,'img/imagenes_ranking/51_Venezuela.png',1,3),
		('Ghana',651,'img/imagenes_ranking/52_Ghana.png',1,1),
		('Hungr�a',642,'img/imagenes_ranking/53_Hungria.png',1,6),
		('Montenegro',640,'img/imagenes_ranking/54_Montenegro.png',1,6),
		('Burkina Faso',639,'img/imagenes_ranking/55_Burkina_Faso.png',1,1),
		('Hait�',627,'img/imagenes_ranking/56_Haiti.png',1,2),
		('RP China',626,'img/imagenes_ranking/57_RP_China.png',1,2),
		('Noruega',620,'img/imagenes_ranking/58_Noruega.png',1,6),
		('Jamaica',614,'img/imagenes_ranking/59_Jamaica.png',1,2),
		('Ecuador',608,'img/imagenes_ranking/60_Ecuador.png',1,3),
		('Costa de Marfil',600,'img/imagenes_ranking/61_Costa_De_Marfil.png',1,1),
		('Rep�blica de Corea',588,'img/imagenes_ranking/62_Republica_De_Corea.png',1,5),
		('Arabia Saud�',576,'img/imagenes_ranking/63_Arabia_Saudi.png',1,5),
		('Cabo Verde',568,'img/imagenes_ranking/64_Cabo_Verde.png',1,1),
		('Rusia',563,'img/imagenes_ranking/65_Rusia.png',1,6),
		('Guinea',552,'img/imagenes_ranking/66_Guinea.png',1,1),
		('Argelia',540,'img/imagenes_ranking/67_Argelia.png',1,1),
		('Eslovenia',524,'img/imagenes_ranking/68_Eslovenia.png',1,6),
		('Honduras',510,'img/imagenes_ranking/69_Honduras.png',1,2),
		('Uganda',503,'img/imagenes_ranking/70_Uganda.png',1,1),
		('Albania',498,'img/imagenes_ranking/71_Albania.png',1,6),
		('Emiratos �rabes Unidos',488,'img/imagenes_ranking/72_Emiratos_Arabes_Unidos.png',1,5),
		('Finlandia',473,'img/imagenes_ranking/73_Finlandia.png',1,6),
		('Mali',488,'img/imagenes_ranking/74_Mali.png',1,1),
		('Sud�frica',473,'img/imagenes_ranking/75_Sudafrica.png',1,1),
		('Uzbekist�n',470,'img/imagenes_ranking/76_Uzbekistan.png',1,5),
		('Siria',450,'img/imagenes_ranking/77_Siria.png',1,5),
		('Zambia',450,'img/imagenes_ranking/78_Zambia.png',1,1),
		('Ben�n',438,'img/imagenes_ranking/79_Benin.png',1,1),
		('Irak',429,'img/imagenes_ranking/80_Irak.png',1,5),
		('Estonia',429,'img/imagenes_ranking/81_Estonia.png',1,6),
		('Israel',420,'img/imagenes_ranking/82_Israel.png',1,6),
		('Trinidad y Tobago',419,'img/imagenes_ranking/83_Trinidad_Y_Tobago.png',1,2),
		('Palestina',418,'img/imagenes_ranking/84_Palestina.png',1,5),
		('ARY de Macedonia',410,'img/imagenes_ranking/85_Ary_De_Macedonia.png',1,6),
		('Chipre',409,'img/imagenes_ranking/86_Chipre.png',1,6),
		('Libia',407,'img/imagenes_ranking/87_Libia.png',1,1),
		('Guinea-Biss�u',403,'img/imagenes_ranking/88_Guinea_Bissau.png',1,1),
		('Curazao',402,'img/imagenes_ranking/89_Curazao.png',1,2),
		('Armenia',392,'img/imagenes_ranking/90_Armenia.png',1,6),
		('Bielorrusia',391,'img/imagenes_ranking/91_Bielorrusia.png',1,6),
		('Gab�n',384,'img/imagenes_ranking/92_Gabon.png',1,1),
		('Luxemburgo',368,'img/imagenes_ranking/93_Luxemburgo.png',1,6),
		('Congo',367,'img/imagenes_ranking/94_Congo.png',1,1),
		('Islas Feroe',363,'img/imagenes_ranking/95_Islas_Feroe.png',1,6),
		('Canad�',1631,'img/imagenes_ranking/96_Canada.png',1,2),
		('El Salvador',1631,'img/imagenes_ranking/97_El_Salvador.png',1,2),
		('Qatar',1631,'img/imagenes_ranking/98_Qatar.png',1,5),
		('Sierra Leona',1631,'img/imagenes_ranking/99_Sierra_Leona.png',1,1),
		('L�bano',1631,'img/imagenes_ranking/100_Libano.png',1,5),
		('Samoa',567, 'img/imagenes_ranking/101_Samoa.png',1,4),
		('Tonga',667, 'img/imagenes_ranking/102_Tonga.png',1,4);
go

insert into guardarEquipoUsuario(nombreSorteo,nombreUsuario,logo,fecha)
values('copa mundial z', 'Ana Rosa Flores', 'img/imagenes_ranking/1_Alemania.png',
'4-11-2013'),('copa mundial 2015', 'Ana Rosa Flores', 'img/imagenes_ranking/10_Peru.png',
'4-11-2015');

insert into sorteoGuardado (nombreSorteo,posicion,nombreEquipo)
values
('copa mundial z','1_A','Alemania'),
('copa mundial z','2_A','Canad�'),
('copa mundial z','3_A','Brasil'),
('copa mundial z','4_A','B�lgica'),

('copa mundial z','1_B','Rep�blica de Irlanda'),
('copa mundial z','2_B','EEUU'),
('copa mundial z','3_B','Bulgaria'),
('copa mundial z','4_B','Austria'),

('copa mundial z','1_C','Ruman�a'),
('copa mundial z','2_C','Jap�n'),
('copa mundial z','3_C','Camer�n'),
('copa mundial z','4_C','Australia'),

('copa mundial z','1_D','Italia'),
('copa mundial z','2_D','Inglaterra'),
('copa mundial z','3_D','Peru'),
('copa mundial z','4_D','Suiza'),

('copa mundial z','1_E','Argentina'),
('copa mundial z','2_E','Portugal'),
('copa mundial z','3_E','Costa Rica'),
('copa mundial z','4_E','Ucrania'),

('copa mundial z','1_F','Espa�a'),
('copa mundial z','2_F','Francia'),
('copa mundial z','3_F','Tunez'),
('copa mundial z','4_F','Polonia'),

('copa mundial z','1_G','Qatar'),
('copa mundial z','2_G','Sierra Leona'),
('copa mundial z','3_G','Chile'),
('copa mundial z','4_G','M�xico'),

('copa mundial z','1_H','Uruguay'),
('copa mundial z','2_H','Croacia'),
('copa mundial z','3_H','Pa�ses Bajos'),
('copa mundial z','4_H','Rusia'),

('copa mundial 2015','1_A','Alemania'),
('copa mundial 2015','2_A','Canad�'),
('copa mundial 2015','3_A','Brasil'),
('copa mundial 2015','4_A','B�lgica'),

('copa mundial 2015','1_B','Rep�blica de Irlanda'),
('copa mundial 2015','2_B','EEUU'),
('copa mundial 2015','3_B','Bulgaria'),
('copa mundial 2015','4_B','Austria'),

('copa mundial 2015','1_C','Ruman�a'),
('copa mundial 2015','2_C','Jap�n'),
('copa mundial 2015','3_C','Camer�n'),
('copa mundial 2015','4_C','Australia'),

('copa mundial 2015','1_D','Italia'),
('copa mundial 2015','2_D','Inglaterra'),
('copa mundial 2015','3_D','Peru'),
('copa mundial 2015','4_D','Suiza'),

('copa mundial 2015','1_E','Argentina'),
('copa mundial 2015','2_E','Portugal'),
('copa mundial 2015','3_E','Costa Rica'),
('copa mundial 2015','4_E','Ucrania'),

('copa mundial 2015','1_F','Espa�a'),
('copa mundial 2015','2_F','Francia'),
('copa mundial 2015','3_F','Tunez'),
('copa mundial 2015','4_F','Polonia'),

('copa mundial 2015','1_G','Qatar'),
('copa mundial 2015','2_G','Sierra Leona'),
('copa mundial 2015','3_G','Chile'),
('copa mundial 2015','4_G','M�xico'),

('copa mundial 2015','1_H','Uruguay'),
('copa mundial 2015','2_H','Croacia'),
('copa mundial 2015','3_H','Pa�ses Bajos'),
('copa mundial 2015','4_H','Rusia');

go 


------------------------------------------------------------------------------------------------------
------------------------					PROCEDURES					-----------------------------
------------------------------------------------------------------------------------------------------


CREATE PROCEDURE createTeam(									
	@nombreP VARCHAR(100),
	@puntos int,									
	@banderaP VARCHAR(100),
	@activado BIT,
	@idConfederacion INT
)
as
BEGIN
	INSERT INTO	Equipo(nombreEquipo,puntos,bandera,activado,idConfederacion)values(@nombreP,@puntos,@banderaP,@activado,@idConfederacion);
END;

GO

CREATE PROCEDURE updateTeam(									
	@nombreP VARCHAR(100),
	@puntos int,									
	@banderaP VARCHAR(100),
	@activado BIT,
	@idConfederacion INT
)
as
BEGIN
	UPDATE Equipo
	SET 
		puntos= @puntos,
		bandera= @banderaP,
		activado= @activado,
		idConfederacion= @idConfederacion

	WHERE nombreEquipo = @nombreP
END;

go



create procedure changeCapacityOfConfederations(
	@idConf int
)
as 
begin
	UPDATE Confederacion SET cupos = cupos-1 WHERE id = @idConf; 
end	

go

CREATE PROCEDURE changeEnableAttributeTeam(									
	@nombreEquipoP VARCHAR(100)
)
as
DECLARE
	@actualState BIT
BEGIN
	set @actualState =  (select activado from Equipo where nombreEquipo = @nombreEquipoP);


	if @actualState = 1
		BEGIN
			UPDATE EQUIPO SET activado = 0 WHERE nombreEquipo = @nombreEquipoP; 
		END
	ELSE
		BEGIN
			UPDATE EQUIPO SET activado = 1 WHERE nombreEquipo = @nombreEquipoP;
		END
END;

GO

CREATE PROCEDURE insertUser(									
	@nombreP VARCHAR(100),
	@apellido1P VARCHAR(100),									
	@apellido2P VARCHAR(100),
	@edadP INT,
	@nombreUsuarioP	VARCHAR(200),
	@contrasennaP VARCHAR(100)
)
as
BEGIN
	INSERT INTO Usuario(nombre,apellidO1,apellido2,edad,nombreUsuario,contrasenna)
		values(@nombreP,@apellido1P,@apellido2P,@edadP,@nombreUsuarioP,@contrasennaP);
END;
