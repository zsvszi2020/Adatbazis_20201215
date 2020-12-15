DROP TABLE IF EXISTS vendeg_hotel 	;
DROP TABLE IF EXISTS hotel 			;
DROP TABLE IF EXISTS vendeg 		;

CREATE TABLE vendeg
(
	vendeg_id			INTEGER PRIMARY KEY		,
	vendeg_nev			VARCHAR(35) NOT NULL 	,
	szuletesi_datum		DATE		NOT NULL	,	
	szuletesi_hely		VARCHAR(35)	NOT NULL	,
	nem					CHAR(1)		NOT NULL			
) ;

INSERT INTO vendeg VALUES (1,'KISS DÁVID'		,'1990.10.15','BUDAPEST'	,'F')  ;
INSERT INTO vendeg VALUES (2,'VÁRADI SÁRA'		,'1991.11.20','BUDAPEST'	,'N')  ;
INSERT INTO vendeg VALUES (3,'CSEKE CSABA'		,'1992.02.21','BAJA'		,'F')  ;
INSERT INTO vendeg VALUES (4,'NAGY ANETT'		,'1994.05.23','BAJA'		,'N')  ;
INSERT INTO vendeg VALUES (5,'TÓTH LILLA'		,'1995.06.02','VESZPRÉM'	,'N')  ;
INSERT INTO vendeg VALUES (6,'MÁTYÁS CSILLA'	,'1995.08.05','VESZPRÉM'	,'N')  ;
INSERT INTO vendeg VALUES (7,'KOVÁCS KLÁRA'		,'1991.09.07','VESZPRÉM'	,'N')  ;
INSERT INTO vendeg VALUES (8,'TÁRNOK BÉLA'		,'1999.02.09','AJKA'		,'F')  ;
INSERT INTO vendeg VALUES (9,'VÖLGYI LÍVIA'		,'2001.03.10','BUDAPEST'	,'N')  ;
INSERT INTO vendeg VALUES (10,'BARÁTH LÁSZLÓ'	,'1960.05.10','BAJA'		,'F')  ;
INSERT INTO vendeg VALUES (11,'BEKE GYÖRGY'		,'1985.08.09','BUDAPEST'	,'F')  ;
INSERT INTO vendeg VALUES (12,'BÍRÓ HEDVIG'		,'1978.06.07','VÁC'			,'N')  ;
INSERT INTO vendeg VALUES (13,'BOKA SÁNDOR'		,'1973.08.05','VÁC'			,'F')  ;
INSERT INTO vendeg VALUES (14,'CSERVÉG RITA'	,'1954.02.02','BUDAPEST'	,'N')  ;
INSERT INTO vendeg VALUES (15,'BOROK ERZSÉBET'	,'1959.03.01','BUDAPEST'	,'N')  ;

CREATE TABLE hotel
(
	hotel_id			INTEGER 	PRIMARY KEY		,
	hotel_nev			VARCHAR(35) NOT NULL		,
	varos				VARCHAR(35)	NOT NULL		,
	csillag				INTEGER		NOT NULL		,
	szoba_ar			INTEGER		NOT NULL	
) ;

INSERT INTO hotel VALUES(1,'HOTEL MEMORIES'		,'BUDAPEST'	,4,24600) ;
INSERT INTO hotel VALUES(2,'HOTEL DANUBIUS'		,'BUDAPEST'	,4,22600) ;
INSERT INTO hotel VALUES(3,'DIANA CLUB HOTEL'	,'BUDAPEST'	,3,25600) ;
INSERT INTO hotel VALUES(4,'CE NAPFÉNY HOTEL'	,'SIÓFOK'	,5,55800) ;
INSERT INTO hotel VALUES(5,'HOTEL LA RIVA'		,'SIÓFOK'	,4,20800) ;
INSERT INTO hotel VALUES(6,'HOTEL BELLA'		,'SZEGED'	,3,16500) ;


CREATE TABLE vendeg_hotel
(
	vendeg_id			INTEGER					,
	hotel_id			INTEGER					,	
	nap					INTEGER					,
	szoba				INTEGER	
) ;

INSERT INTO vendeg_hotel VALUES(1,1,5,125) ;
INSERT INTO vendeg_hotel VALUES(2,2,6,125) ;
INSERT INTO vendeg_hotel VALUES(2,3,5,125) ;
INSERT INTO vendeg_hotel VALUES(3,4,8,125) ;
INSERT INTO vendeg_hotel VALUES(4,4,5,125) ;
INSERT INTO vendeg_hotel VALUES(4,2,4,125) ;
INSERT INTO vendeg_hotel VALUES(5,3,5,125) ;
INSERT INTO vendeg_hotel VALUES(7,3,3,125) ;
INSERT INTO vendeg_hotel VALUES(8,3,5,125) ;
INSERT INTO vendeg_hotel VALUES(9,4,2,125) ;
INSERT INTO vendeg_hotel VALUES(1,1,5,125) ;







