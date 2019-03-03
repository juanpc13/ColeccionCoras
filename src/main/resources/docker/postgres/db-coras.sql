/*comentario*/
CREATE TABLE tipo_cora(
    id_tipo_cora serial PRIMARY KEY,
    nombre VARCHAR (64),
    imagen VARCHAR (128),
    descripcion text,
    activo boolean
);

CREATE TABLE estado(
    id_estado serial PRIMARY KEY,
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
    id_tipo_cora integer,
    id_estado integer,
    nombre VARCHAR (64),
    anio integer,
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

CREATE TABLE usuario (
    id_usuario serial PRIMARY KEY,
    nombres character varying(128),
    apellidos character varying(128),
    correo character varying(128),
    password character varying(128),
    llave character varying(128),
    foto character varying(128),
    id_pais integer,
    activo boolean
);

CREATE TABLE coleccion (
    id_coleccion serial PRIMARY KEY,
    id_usuario integer NOT NULL,
    id_cora integer NOT NULL,
    id_casa integer,
    estado_cora integer,
    activo boolean
);

ALTER TABLE ONLY cora
    ADD CONSTRAINT cora_tipo_cora_fk
    FOREIGN KEY (id_tipo_cora)
    REFERENCES tipo_cora(id_tipo_cora)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY cora
    ADD CONSTRAINT cora_estado_fk
    FOREIGN KEY (id_estado)
    REFERENCES estado(id_estado)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pais_fk
    FOREIGN KEY (id_pais)
    REFERENCES pais(id_pais)
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

ALTER TABLE ONLY coleccion
    ADD CONSTRAINT coleccion_casa_fk
    FOREIGN KEY (id_casa)
    REFERENCES casa(id_casa)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;
	
GRANT ALL ON TABLE public.tipo_cora TO admin;
GRANT ALL ON TABLE public.estado TO admin;
GRANT ALL ON TABLE public.pais TO admin;
GRANT ALL ON TABLE public.casa TO admin;
GRANT ALL ON TABLE public.cora TO admin;
GRANT ALL ON TABLE public.usuario TO admin;
GRANT ALL ON TABLE public.coleccion TO admin;


INSERT INTO public.tipo_cora (id_tipo_cora, nombre, imagen, descripcion, activo) VALUES (1, 'Estados de US', NULL, NULL, true);
INSERT INTO public.tipo_cora (id_tipo_cora, nombre, imagen, descripcion, activo) VALUES (2, 'Distrito de Columbia', NULL, NULL, true);
INSERT INTO public.tipo_cora (id_tipo_cora, nombre, imagen, descripcion, activo) VALUES (3, 'Territorios de los Estados Unidos', NULL, NULL, true);
INSERT INTO public.tipo_cora (id_tipo_cora, nombre, imagen, descripcion, activo) VALUES (4, 'Parques Nacionales', NULL, NULL, true);


INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (1, 'Delaware', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (2, 'Pensilvania', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (3, 'Nueva Jersey', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (4, 'Georgia', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (5, 'Connecticut', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (6, 'Massachusetts', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (7, 'Maryland', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (8, 'Carolina del Sur', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (9, 'Nuevo Hampshire', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (10, 'Virginia', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (11, 'Nueva York', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (12, 'Carolina del Norte', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (13, 'Rhode Island	', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (14, 'Vermont', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (15, 'Kentucky', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (16, 'Tennessee', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (17, 'Ohio', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (18, 'Luisiana', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (19, 'Indiana', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (20, 'Mississippi', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (21, 'Illinois', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (22, 'Alabama', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (23, 'Maine', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (24, 'Misuri', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (25, 'Arkansas', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (26, 'Míchigan', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (27, 'Florida', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (28, 'Texas', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (29, 'Iowa', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (30, 'Wisconsin', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (31, 'California', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (32, 'Minnesota', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (33, 'Oregón', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (34, 'Kansas', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (35, 'Virginia Occidental', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (36, 'Nevada', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (37, 'Nebraska', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (38, 'Colorado', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (39, 'Dakota del Norte', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (40, 'Dakota del Sur', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (41, 'Montana', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (42, 'Washington', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (43, 'Idaho', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (44, 'Wyoming', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (45, 'Utah', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (46, 'Oklahoma', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (47, 'Nuevo México', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (48, 'Arizona', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (49, 'Alaska', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (50, 'Hawái', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (51, 'Distrito de Columbia', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (52, 'Puerto Rico', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (53, 'Guam', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (54, 'Samoa Americana', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (55, 'Islas Vírgenes de los Estados Unidos', NULL, NULL, true);
INSERT INTO public.estado (id_estado, nombre, imagen, descripcion, activo) VALUES (56, 'Islas Marianas del Norte', NULL, NULL, true);



INSERT INTO public.casa (id_casa, nombre, identificador, imagen, descripcion, activo) VALUES (1, 'Filadelfia', 'P', NULL, NULL, true);
INSERT INTO public.casa (id_casa, nombre, identificador, imagen, descripcion, activo) VALUES (2, 'Denver', 'D', NULL, NULL, true);
INSERT INTO public.casa (id_casa, nombre, identificador, imagen, descripcion, activo) VALUES (3, 'San Francisco', 'S', NULL, NULL, true);
INSERT INTO public.casa (id_casa, nombre, identificador, imagen, descripcion, activo) VALUES (4, 'Plata', '-', NULL, NULL, true);
