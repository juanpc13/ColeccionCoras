/*comentario*/
CREATE TABLE estado(
	id_estado serial PRIMARY KEY,
	nombre VARCHAR (64),
	imagen VARCHAR (128),
	descripcion text,
	activo boolean
);

CREATE TABLE sitio(
	id_sitio serial PRIMARY KEY,
	nombre VARCHAR (64),
	imagen VARCHAR (128),
	descripcion text,
	activo boolean
);

CREATE TABLE casa(
	id_casa serial PRIMARY KEY,
	nombre VARCHAR (64),
	identificador VARCHAR (8),
	imagen VARCHAR (128),
	descripcion text,
	activo boolean
);

CREATE TABLE cora(
	id_cora serial PRIMARY KEY,
	id_estado integer NOT NULL,
	id_sitio integer NOT NULL,
	id_casa integer,
	imagen VARCHAR (128),
	disenador VARCHAR (64),
	descripcion text,
	fecha_incorporacion date,
	fecha_emision date,
	producidas integer,
	activo boolean
);

CREATE TABLE pais (
	id_pais serial PRIMARY KEY,
	nombre character varying(128),
	activo boolean
);

CREATE TABLE departamento (
	id_departamento serial PRIMARY KEY,
	id_pais integer NOT NULL,
	nombre character varying(128),
	activo boolean
);

CREATE TABLE usuario (
    id_usuario serial PRIMARY KEY,
    nombres character varying(128),
    apellidos character varying(128),
    correo character varying(128),
    password character varying(128),
	llave character varying(128),
    foto character varying(128),
    id_departamento integer,
    activo boolean
);

CREATE TABLE coleccion (
	id_coleccion serial PRIMARY KEY,    
    id_usuario integer NOT NULL,
	id_cora integer NOT NULL,
    activo boolean
);

ALTER TABLE ONLY cora
    ADD CONSTRAINT cora_estado_fk
	FOREIGN KEY (id_estado)
	REFERENCES estado(id_estado)
	MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE ONLY cora
    ADD CONSTRAINT cora_sitio_fk
	FOREIGN KEY (id_sitio)
	REFERENCES sitio(id_sitio)
	MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE ONLY cora
    ADD CONSTRAINT cora_casa_fk
	FOREIGN KEY (id_casa)
	REFERENCES casa(id_casa)
	MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE ONLY departamento
    ADD CONSTRAINT departamento_pais_fk
	FOREIGN KEY (id_pais)
	REFERENCES pais(id_pais)
	MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_departamento_fk
	FOREIGN KEY (id_departamento)
	REFERENCES departamento(id_departamento)
	MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE ONLY coleccion
    ADD CONSTRAINT coleccion_usuario_fk
	FOREIGN KEY (id_usuario)
	REFERENCES usuario(id_usuario)
	MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY coleccion
    ADD CONSTRAINT coleccion_cora_fk
	FOREIGN KEY (id_cora)
	REFERENCES cora(id_cora)
	MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;
	
GRANT ALL ON TABLE public.casa TO admin;
GRANT ALL ON TABLE public.coleccion TO admin;
GRANT ALL ON TABLE public.cora TO admin;
GRANT ALL ON TABLE public.departamento TO admin;
GRANT ALL ON TABLE public.estado TO admin;
GRANT ALL ON TABLE public.pais TO admin;
GRANT ALL ON TABLE public.sitio TO admin;

GRANT ALL ON TABLE public.usuario TO admin;

