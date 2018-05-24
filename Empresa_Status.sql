create schema Empresa_Status;
use Empresa_Status;

CREATE TABLE Empresa (
cdEmpresa INT(18) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
idAtivo bit NOT NULL,
dsRazaoSocial varchar(150) NOT NULL,
dsCNPJ varchar(14) NOT NULL,
dsEmail varchar(150),
cdStatus INT(18) unsigned NOT NULL 
);

CREATE TABLE Status (
cdStatus INT(18) UNSIGNED PRIMARY KEY not null AUTO_INCREMENT,
dsStatus varchar(100) not null
);

ALTER TABLE Empresa ADD FOREIGN KEY(cdStatus) REFERENCES Status (cdStatus) ;