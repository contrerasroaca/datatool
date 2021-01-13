CREATE TABLE ciudad (
  idciudad INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  departamento_iddepartamento INTEGER UNSIGNED NOT NULL,
  nombre VARCHAR(20) NULL,
  PRIMARY KEY(idciudad),
  INDEX ciudad_FKIndex1(departamento_iddepartamento)
);

CREATE TABLE ciudad_has_empresas (
  ciudad_idciudad INTEGER UNSIGNED NOT NULL,
  empresas_idempresas INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(ciudad_idciudad, empresas_idempresas),
  INDEX ciudad_has_empresas_FKIndex1(ciudad_idciudad),
  INDEX ciudad_has_empresas_FKIndex2(empresas_idempresas)
);

CREATE TABLE conductores (
  idconductores INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tipo_documento_idtipo_documento INTEGER UNSIGNED NOT NULL,
  tipo_documento INTEGER UNSIGNED NULL,
  numero_documento VARCHAR(20) NULL,
  nombre VARCHAR(20) NULL,
  direccion VARCHAR(20) NULL,
  telefono VARCHAR(20) NULL,
  PRIMARY KEY(idconductores),
  INDEX conductores_FKIndex1(tipo_documento_idtipo_documento)
);

CREATE TABLE departamento (
  iddepartamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  pais_idpais INTEGER UNSIGNED NOT NULL,
  nombre VARCHAR(20) NULL,
  PRIMARY KEY(iddepartamento),
  INDEX departamento_FKIndex1(pais_idpais)
);

CREATE TABLE empresas (
  idempresas INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  representante_legal_idrepresentante_legal INTEGER UNSIGNED NOT NULL,
  tipo_documento_idtipo_documento INTEGER UNSIGNED NOT NULL,
  numero_identificacion VARCHAR(50) NULL,
  nombre VARCHAR(50) NULL,
  direccion VARCHAR(50) NULL,
  telefono VARCHAR(20) NULL,
  PRIMARY KEY(idempresas),
  INDEX empresas_FKIndex1(tipo_documento_idtipo_documento),
  INDEX empresas_FKIndex2(representante_legal_idrepresentante_legal)
);

CREATE TABLE pais (
  idpais INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(20) NULL,
  PRIMARY KEY(idpais)
);

CREATE TABLE representante_legal (
  idrepresentante_legal INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tipo_documento_idtipo_documento INTEGER UNSIGNED NOT NULL,
  nombre VARCHAR(30) NULL,
  tipo_documento INTEGER UNSIGNED NULL,
  numero_documento VARCHAR(20) NULL,
  direccion VARCHAR(50) NULL,
  telefono VARCHAR(20) NULL,
  PRIMARY KEY(idrepresentante_legal),
  INDEX representante_legal_FKIndex1(tipo_documento_idtipo_documento)
);

CREATE TABLE tipo_documento (
  idtipo_documento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  documento VARCHAR(20) NULL,
  PRIMARY KEY(idtipo_documento)
);

CREATE TABLE vehiculos (
  idvehiculos INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  empresas_idempresas INTEGER UNSIGNED NOT NULL,
  placa VARCHAR(10) NULL,
  motor VARCHAR(20) NULL,
  chasis VARCHAR(20) NULL,
  modelo VARCHAR(20) NULL,
  fecha_matricula DATE NULL,
  pasajeros_sentados INTEGER UNSIGNED NULL,
  pasajeros_pie INTEGER UNSIGNED NULL,
  peso_seco FLOAT(10,2) NULL,
  peso_bruto FLOAT(10,2) NULL,
  puertas INTEGER UNSIGNED NULL,
  marca VARCHAR(20) NULL,
  linea VARCHAR(20) NULL,
  PRIMARY KEY(idvehiculos),
  INDEX vehiculos_FKIndex2(empresas_idempresas)
);

CREATE TABLE vehiculos_has_conductores (
  vehiculos_idvehiculos INTEGER UNSIGNED NOT NULL,
  conductores_idconductores INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(vehiculos_idvehiculos, conductores_idconductores),
  INDEX vehiculos_has_conductores_FKIndex1(vehiculos_idvehiculos),
  INDEX vehiculos_has_conductores_FKIndex2(conductores_idconductores)
);


