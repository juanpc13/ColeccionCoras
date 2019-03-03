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



/*Los 50 Estados*/
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (1, 1, 1, 'Delaware', NULL, 'William Cousins', 'En su reverso se observa la cabalgata de Caesar Rodney, el congresista que con su voto movió la balanza hacia independencia de su país. En la parte superior de la imagen se lee "Delaware 1787", a su derecha en mayúsculas "the first State" ("el primer estado" en español); a su izquierda "Caesar Rodney" y abajo "1999 E Pluribus Unum".', '1787-12-07', '1999-01-01', 774824000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (2, 1, 2, 'Pensilvania', NULL, 'John Mercanti', 'En su reverso muestra la estatua "Mancomunidad" (en inglés Commonwealth) de Roland Hinton Perry superpuesta a la imagen de la silueta del estado. En la parte superior de la imagen se lee "Pennsylvania 1787", a su derecha, en columna y en mayúsculas "Virtue, Liberty, Independence" (en español "Virtud, Libertad, Independencia"). A sus pies "1999 E Pluribus Unum"', '1787-12-12', '1999-03-08', 707332000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (3, 1, 3, 'Nueva Jersey', NULL, 'Alfred Maletsky', 'Su reverso es un diseño basado en la pintura hecha por Emmanuel Leutze llamada "Washington Crossing the Delaware" (en español "Washington cruzando el Delaware") que muestra al general George Washington junto a miembros del ejército colonial cruzando el Río Delaware en vías a importantes batallas de la guerra de independencia de Estados Unidos.', '1787-12-18', '1999-05-17', 662228000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (4, 1, 4, 'Georgia', NULL, 'T. James Ferrell', 'El reverso muestra mucho símbolos relacionados con este estado como son un durazno el cual está rodeado por la silueta del estado. A ambos lados una rama de roble que es el árbol oficial del estado, todo esto coronado por un estandarte con el lema del estado escrito en él: "Wisdom, Justice, Moderation" (en español: "sabiduría, justicia, templanza"). Sobre esto, "Georgia 1788" y abajo "1999 E Pluribus Unum"', '1788-02-02', '1999-07-19', 939932000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (5, 1, 5, 'Connecticut', NULL, 'T. James Ferrell', 'El reverso muestra el roble donde el Capitán Joseph Wadsworth escondió la constitución de Connecticut que estaba siendo amenazada por el Rey Jaime II, e impidió de esta forma la caída de este estado en manos de los Británicos. Sobre esto se lee "Connecticut 1788", a la izquierda "The charter Oak" (en español "El roble de la constitución") y abajo "1999 E Pluribus Unum"', '1788-01-09', '1999-10-12', 1346624000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (6, 1, 6, 'Massachusetts', NULL, 'Thomas D. Rodgers', 'Su reverso muestra la estatua "The Minuteman" que se encuentra en el "Minute National Historical Park" en Massachusetts, la cual representa a las milicias que ayudaron a combatir en la independencia. Esta figura se encuentra centrada a la izquierda y sobre un mapa del estado. Sobre esta imagen se lee "Massachusetts 1788", a la derecha, en mayúsculas "The Bay state", y en la parte inferior "2000 E Pluribus Unum"', '1788-02-06', '2000-01-03', 1163784000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (7, 1, 7, 'Maryland', NULL, 'Thomas D. Rodgers', 'En su reverso muestra su Casa de Estado, un edificio distintivo construido en 1772. A ambos lados ramas de roble blanco y, cortado por el edificio, y en mayúsculas "the old line state". Abajo "2000 E Pluribus Unum"', '1788-04-18', '2000-03-13', 1234732000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (8, 1, 8, 'Carolina del Sur', NULL, 'Thomas D. Rodgers', 'En el fondo, la silueta del estado y sobre ésta, a la izquierda un reyezuelo rodeado de jazmines amarillos y a la derecha una Palmera Sabal. Sobre estas dos imágenes y dentro de la silueta, "The palmetto state". Debajo de todo "2000 E Pluribus Unum"', '1788-05-23', '2000-05-22', 1308784000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (9, 1, 9, 'Nuevo Hampshire', NULL, 'William Cousins', 'Su reverso muestra a la derecha una formación natural rocosa de este estado y sobre ésta su nombre, "The old man of the mountain" (en español "El viejo de la montaña"). A la izquierda el lema "Live free or die" (en español "vive libre o muerto"). En el borde izquierdo de la moneda hay nueve estrellas queriendo mostrar que este estado fue el noveno en ser incluido en la federación. Abajo "2000 E Pluribus Unum"', '1788-06-21', '2000-08-07', 1169016000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (10, 1, 10, 'Virginia', NULL, 'Edgar Z. Steever', 'El reverso muestra tres barcos, el Susan Constant, el Godspeed y el Discovery, que fueron los que trajeron a los primeros colonos al primer asentamiento fijo inglés de Estados Unidos de América, Jamestown. Sobre los barcos y a la izquierda se lee "Jamestown 1607 - 2007". Sobre todo "Virginia 1788". Debajo de la línea del mar del diseño se lee "Quadricentennial" (en español "cuatricentenario"). Debajo de todo esto "2000 E Pluribus Unum"', '1788-06-25', '2000-10-16', 1346624000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (11, 1, 11, 'Nueva York', NULL, 'Alfred Maletsky', 'Su reverso muestra a la Estatua de la libertad sobreimpuesta a un mapa del estado. A derecha e izquierda, siguiendo el borde de la moneda se observan once estrellas que representan la entrada de Nueva York como undécimo estado de la unión. Arriba "New york 1788" (en español Nueva York 1788"). A la derecha del diseño central se lee "Gateway to freedom" (en español "el paso a la libertad"). También se observan dentro del mapa unas líneas que indican el recorrido del río Hudson y del Canal de Erie, ambos corrientes de agua muy importantes para Nueva York. Abajo se lee "2001 E Pluribus Unum"', '1788-06-26', '2000-01-02', 1275040000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (12, 1, 12, 'Carolina del Norte', NULL, 'John Mercanti', 'Su reverso muestra la fotografía "First flight" (en español "Primer vuelo") de 1903. El ultraligero está planeando sobre el suelo, mientras una persona observa. Sobre esto "North Carolina 1789 First Flight" (en español "Carolina del Norte 1789 Primer Vuelo". Abajo "2001 E Pluribus Unum"', '1789-11-21', '2001-03-12', 1055476000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (13, 1, 13, 'Rhode Island', NULL, 'Thomas D. Rodgers', 'Su reverso muestra un barco de vela surcando las aguas de la bahía de Narragansett con el puente Pell de fondo para mostrar el deporte más popular de este estado. Arriba se lee "Rhode Island 1790". A la derecha "The ocean state" (en español "El estado océano"). Abajo "2001 E Pluribus Unum"', '1790-05-29', '2001-05-21', 870100000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (14, 1, 14, 'Vermont', NULL, 'T. James Ferrell', 'Su reverso muestra la montaña "Camel''s Hump" (en español "Joroba de Camello"), con imágenes sobreimpuestas de dos árboles de arce con un hombre recogiendo savia en unos baldes, esto para honrar el hecho de que este estado es famoso por su producción de jarabe y azúcar de arce. Arriba "Vermont 1791". A la derecha "Freedom and unity" (en español "Libertad y unión"). Abajo "2001 E Pluribus Unum"', '1791-03-04', '2001-08-06', 882804000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (15, 1, 15, 'Kentucky', NULL, 'T. James Ferrell', 'Su reverso muestra la "Federal Hill" (en español "Colina Federal") que era un plantación que perteneció a la familia Rowan, actualmente parte de "My Old Kentucky Home State Park" (en español "Parque estatal Mi Viejo Hogar Kentucky". Sobreimpuesto a esto, un purasangre de carreras detrás de una verja para conmemorar al Derby de Kentucky. Arriba se lee "Kentucky 1792". A la derecha "My Old Kentucky Home" (en español "Mi Viejo Hogar Kentucky"). Abajo "2001 E Pluribus Unum"', '1792-06-01', '2001-10-15', 723564000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (16, 1, 16, 'Tennessee', NULL, 'Donna Weaver', 'Su reverso muestra tres instrumentos musicales, de izquierda a derecha una guitarra, una trompeta y un violín con un libro de partituras detrás. Sobre éstos, tres estrellas. Cada estrella con cada instrumento simboliza una región de Tennessee con su música típica (country, blues y appalachian respectivamente). Bajo esto, un estandarte que dice "Musical Heritage" (en español "Patrimonio Musical"). Sobre todo el diseño central se lee "Tennessee 1796". Debajo de todo el diseño central se lee "2002 E Pluribus Unum"', '1796-06-01', '2002-01-02', 648068000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (17, 1, 17, 'Ohio', NULL, 'Donna Weaver', 'Su reverso muestra la contribución de este estado a la historia de la aviación con un ultraligero y un astronauta sobre la silueta del estado. Bajo el avión se lee "Birthplace of Aviation Pioneers" (en español "Cuna de los pioneros de la aviación"). Sobre todo esto "Ohio 1803". Debajo de todo esto "2002 E Pluribus Unum"', '1803-03-01', '2002-03-18', 632032000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (18, 1, 18, ' Luisiana', NULL, 'John Mercanti', 'Su reverso muestra el ave de Luisiana, el pelícano, una trompeta con figuras de corcheas y la silueta del territorio actual de Estados Unidos con el territorio adquirido por Thomas Jefferson de Napoleón Bonaparte resaltado, junto con la inscripción, a la derecha "Louisiana Purchase" (en español "La compra de Luisiana"). Arriba "Louisiana 1812", abajo "2002 E Pluribus Unum"', '1812-04-30', '2002-05-30', 764204000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (19, 1, 19, 'Indiana', NULL, 'Donna Weaver', 'Su reverso muestra un monoplaza de carreras para demostrar el orgullo sentido por este estado por la carrera de las 500 millas de Indianápolis. Esto está sobre una silueta del mapa del estado, la inscripción "Crossroads of America" (en español "Encrucijadas de América") se lee abajo. Una circunferencia de 19 estrellas representa el lugar que ocupa Indiana en el orden de la unión. Arriba "Indiana 1816". Abajo "2002 E Pluribus Unum"', '1816-12-11', '2002-08-08', 689800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (20, 1, 20, 'Mississippi', NULL, 'Donna Weaver', 'Su reverso muestra la belleza y elegancia de la flor estatal combinando las flores y hojas de Magnolia con la inscripción en cursiva "The Magnolia State" (en español "El estado de la magnolia"). Arriba "Mississippi 1817" y abajo "2002 E Pluribus Unum"', '1817-12-10', '2002-10-15', 579600000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (21, 1, 21, 'Illinois', NULL, 'Donna Weaver', 'En su reverso se observa una figura de Abraham Lincoln en su juventud, rodeada de la silueta del estado. A la izquierda se observa la imagen de una granja y la inscripción "Land of Lincoln" (en español "Tierra de Lincoln"); y a la derecha una silueta de la ciudad de Chicago y la inscripción "21st State - Century" (en español "21er Estado - Siglo"), la cual representa la historia y futuro del estado. Arriba "Illinois 1818" y abajo "2003 E Pluribus Unum"', '1818-12-03', '2003-01-02', 463200000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (22, 1, 22, 'Alabama', NULL, 'Norman E. Nemeth', 'Su reverso muestra una figura de Hellen Keller con su nombre en Braille reducido e inglés. Es la única de esta serie de monedas que presenta escritura Braille. Rodeada, a izquierda y derecha respectivamente, por una rama de pino de hoja larga (Pinus palustris) y un arreglo de Magnolias. Debajo de la imagen se observa un estandarte que reza "Spirit of Courage" (es español "Espíritu de Coraje"). Arriba "Alabama 1819", abajo "2003 E Pluribus Unum"', '1819-12-14', '2003-03-17', 457400000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (23, 1, 23, 'Maine', NULL, 'Donna Weaver', 'Su reverso muestra la península pemaquid con el Faro de Pemaquid y una Goleta a la mar. Este faro fue necesario por los frecuentes encallamientos que se sucedían en la costa y representa una atracción turística importante para este estado. Arriba se lee "Maine 1820" y abajo "2003 E Pluribus Unum"', '1820-03-15', '2003-06-02', 448800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (24, 1, 24, 'Misuri', NULL, 'Alfred Maletsky', 'Su reverso muestra la expedición de Meriwether Lewis y Wlliam Clark a su regreso a la ciudad de San Luis hacia el final del Río Misuri con el Memorial Expansión Nacional de Jefferson y el Arco Gateway al fondo. Arriba de la imagen se lee "Corps of Discovery 1804 - 2004" (en español "Cuerpos de descubrimiento 1804 - 2004"). Arriba "Missouri 1821" , abajo "2003 E Pluribus Unum"', '1821-08-10', '2003-08-04', 453200000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (25, 1, 25, 'Arkansas', NULL, 'John Mercanti', 'Su reverso muestra unos tallos de arroz, un diamante y un ánade real volando sobre un lago. Todo esto fue escogido porque Arkansas es popularmente conocido como "el estado natural". Arriba "Arkansas 1836", abajo "2003 E Pluribus Unum"', '1836-06-15', '2003-10-20', 457800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (26, 1, 26, 'Míchigan', NULL, 'Donna Weaver', 'En el centro se observa el contorno del estado y del sistema de los Grandes Lagos. A la derecha se puede leer "Great Lakes State" (es español: Estado de los Grandes Lagos), arriba "Michigan 1837" y abajo "2004 E Pluribus Unum"', '1837-01-26', '2004-01-26', 459600000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (27, 1, 27, 'Florida', NULL, 'T. James Ferrell', 'Arriba se puede ver el nombre del estado y su año de incorporación a la federación, "Florida 1845". En el centro y arriba se encuentra un transbordador espacial y debajo de este a la izquierda un galeón español del siglo XVI y, a la derecha, una franja de tierra con palmeras de la especie Sabal palmetto, el árbol símbolo del estado. La frase "Gateway to discovery" (en español: "La puerta al descubrimiento") se sitúa debajo de estos dos últimos símbolos. Finalmente abajo se observa "2004 E Pluribus Unum"', '1845-03-03', '2004-03-29', 481800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (28, 1, 28, 'Texas', NULL, 'Norman E. Nemeth', 'Su reverso muestra el contorno del estado y sobre él superpuesto una estrella de cinco puntas, junto con la inscripción "The Lone Star State" ("el estado de la estrella solitaria", en español), el sobrenombre con el que se conoce a Texas en alusión a la estrella presente en su bandera. Arriba se lee "Texas 1845" y abajo "2004 E Pluribus Unum" ambos conectados por una cuerda en alusión a la figura histórica del ganado y los vaqueros', '1845-12-29', '2004-06-01', 541800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (29, 1, 28, 'Iowa', NULL, 'John Mercanti', 'Muestra una escuela de planta y espacio único, con el maestro y sus estudiantes sembrando un árbol; imagen basada en una pintura de Grant Wood. Sobre esto "Foundation in education" (en español: "Fundada en educación") y abajo "Grant Wood" Arriba "Iowa 1846", abajo "2004 E Pluribus Unum"', '1846-12-28', '2004-08-30', 465200000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (30, 1, 30, 'Wisconsin', NULL, 'Alfred Maletsky', 'Muestra un tema agrario con una vaca, un queso redondo y una mazorca de maíz; esto fue escogido ya que este estado produce el 15% de la leche de Estados Unidos y más de 350 tipos de queso. Debajo de estas tres imágenes se observa un estandarte con la palabra "Forward" (en español: "Adelante") lema del estado desde 1851 y arriba "Wisconsin 1848" , abajo "2004 E Pluribus Unum"', '1848-05-28', '2004-10-25', 453200000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (31, 1, 31, 'California', NULL, 'Don Everhart', 'Muestra al naturalista y conservacionista John Muir admirando el monolito de granito "Half Dome" del Valle de Yosemite. Además muestra un Cóndor de California sobrevolándolo. Presenta inscritos el nombre del naturalista (a su espalda) y el nombre del valle ](debajo de este). Arriba "California 1850", abajo "2005 E Pluribus Unum"', '1850-09-09', '2005-01-31', 520400000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (32, 1, 32, 'Minnesota', NULL, 'Charles Vickers', 'El diseño muestra un lago bordeado de árboles con dos personas pescando en bote, una gavia nadando y un contorno texturizado del estado rodeando el texto "Land of 10,000 lakes" (en español "Tierra de 10.000 lagos"). Arriba "Minnesota 1858", abajo "2005 E Pluribus Unum"', '1858-05-11', '2005-04-04', 488000000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (33, 1, 33, 'Oregón', NULL, 'Donna Weaver', 'Muestra una porción del Lago del Cráter visto desde su orilla sur-suroeste, así como la Isla del mago y los picos Watchman y Hillman. En las orillas se observan coníferas. Sobre esto "Crater Lake" (en español "Lago del Cráter"). Arriba "Oregon 1859", abajo "2005 E Pluribus Unum"', '1859-02-14', '2005-06-06', 720200000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (34, 1, 34, 'Kansas', NULL, 'Norman Nemeth', ' Muestra un bisonte americano y girasoles ambos emblemáticos de la historia del estado y su belleza natural. Arriba "Kansas 1861", abajo "2005 E Pluribus Unum"', '1861-01-29', '2005-08-29', 563400000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (35, 1, 35, 'Virginia Occidental', NULL, 'John Mercanti', 'Muestra el Puente del Barranco del Río Nuevo cruzando la garganta del río New. Escrito sobre el agua "New River Gorge" (en español: "Barranco del Río Nuevo"). Arriba "West Virginia 1863", abajo "2005 E Pluribus Unum"', '1863-06-20', '2005-10-14', 721600000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (36, 1, 36, 'Nevada', NULL, 'Don Everhart', 'Muestra un trío de mustangs salvajes y al sol elevándose detrás de montañas nevadas, todo rodeado de ramas de Artemisia tridentata. Abajo un estandarte en el que se lee "The Silver State" (en español: "El estado de plata"). Arriba "Nevada 1864", abajo "2006 E Pluribus Unum"', '1864-10-31', '2006-01-31', 589800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (37, 1, 37, 'Nebraska', NULL, 'Charles Vickers', 'Muestra una carroza cubierta tirada por bueyes donde van montados pioneros. Se ve también la Roca Chimenea y el sol de medio día. Abajo se lee "Chimney Rock" (en español: "Roca Chimenea"). Arriba "Nebraska 1867", abajo "2006 E Pluribus Unum"', '1867-03-01', '2006-04-03', 591000000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (38, 1, 38, 'Colorado', NULL, 'Norm Nemeth', 'Muestra una vista de las Montañas Rocosas con árboles siempreverdes y un estandarte que dice "Coloful Colorado" (en español "Colorado Colorido"). Arriba "Colorado 1876", abajo "2006 E Pluribus Unum"', '1876-08-01', '2006-06-14', 569000000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (39, 1, 39, 'Dakota del Norte', NULL, 'Donna Weaver', 'Muestra un par de bisontes americanos caminando al atardecer en las tierras baldías de este estado. Arriba "North Dakota 1889", abajo "2006 E Pluribus Unum"', '1889-11-02', '2006-08-28', 664800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (40, 1, 40, 'Dakota del Sur', NULL, 'John Mercanti', 'Muestra un faisán común al vuelo sobre el Monte Rushmore. Todo rodeado por espigas de trigo. Arriba "South Dakota 1889", abajo "2006 E Pluribus Unum"', '1889-11-02', '2006-11-06', 510800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (41, 1, 41, 'Montana', NULL, 'Don Everhart', 'Muestra una calavera de bisonte sobre un paisaje de este estado y al lado de la inscripción "Big sky country" (en español: "País de gran cielo"). Arriba "Montana 1889", abajo "2007 E Pluribus Unum"', '1889-11-08', '2007-01-29', 513240000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (42, 1, 42, 'Washington', NULL, 'Charles Vickers', 'Muestra un salmón real, chavicha o chinuc, saltando del agua frente al Monte Rainier. Sobre el agua se lee "The evergreen State" (en español: "El Estado siempre verde"). Arriba "Washington 1889", abajo "2007 E Pluribus Unum"', '1889-11-11', '2007-04-11', 545200000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (43, 1, 43, 'Idaho', NULL, 'Don Everhart', 'Muestra un halcón peregrino imponiéndose sobre un contorno del estado de Idaho. Bajo el pico del ave se lee en latín "Esto Perpetua" (en español: "Hazlo Perpetuo"). Arriba "Idaho 1890", abajo "2007 E Pluribus Unum"', '1890-06-03', '2007-06-05', 581400000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (44, 1, 44, 'Wyoming', NULL, 'Norman E. Nemeth', 'Muestra la imagen de "Bucking Horse and Rider" (caballo no entrenado que intenta quitarse el peso de la espalda llamado en inglés "Bronco") patentada por el estado en el año 1936. A un lado se lee "The equality State" (en español: "El Estado de la igualdad") para recordarnos que éste fue el primer estado en aceptar el sufragio femenino. Arriba "Wyoming 1890", abajo "2007 E Pluribus Unum"', '1890-07-10', '2007-09-04', 564400000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (45, 1, 45, 'Utah', NULL, 'Joseph Menna', 'Muestra dos locomotoras moviéndose hacia el clavo de oro (último clavo puesto en la línea férrea del Primer ferrocarril transcontinental de Estados Unidos). Arriba, y dividido por el clavo, "Crossroads of the west" (en español: "Encrucijadas del oeste"). Arriba "Utah 1896", abajo "2007 E Pluribus Unum"', '1896-01-04', '2007-11-05', 508200000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (46, 1, 46, 'Oklahoma', NULL, 'Phebe Hemphill', ' Muestra una tijereta rosada al vuelo con sus plumas de la cola abiertas y sobre la flor Gaillardia. Arriba "Oklahoma 1907", abajo "2008 E Pluribus Unum', '1907-11-16', '2008-01-28', 416600000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (47, 1, 47, 'Nuevo México', NULL, 'Don Everhart', ' Muestra el símbolo del sol de los Zia sobre un contorno topográfico del estado. A un lado y abajo "Land of enchantment" (en español: "Tierra de encanto"). Arriba "New Mexico 1912", abajo "2008 E Pluribus Unum"', '1912-01-06', '2008-04-07', 488600000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (48, 1, 48, 'Arizona', NULL, 'Joseph Menna', 'Muestra un imagen del Gran Cañón al atardecer con un saguaro a la derecha. A un lado de este último un estandarte que reza "Grand Canyon State" (en español: "Estado del Gran Cañón"). Arriba "Arizona 1912", abajo "2008 E Pluribus Unum"', '1912-02-14', '2008-06-02', 509600000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (49, 1, 49, 'Alaska', NULL, 'Charles Vickers', 'Muestra un oso grizzly emergiendo de las aguas con un salmón en su boca. En el cielo la estrella del norte. A la derecha del oso "The great land" (en español: "La gran tierra"). Arriba "Alaska 1959", abajo "2008 E Pluribus Unum"', '1959-01-03', '2008-08-23', 505800000, true);
INSERT INTO public.cora (id_cora, id_tipo_cora, id_estado, nombre, imagen, disenador, descripcion, fecha_incorporacion, fecha_emision, producidas, activo) VALUES (50, 1, 50, 'Hawái', NULL, 'Don Everhart', 'Muestra al monarca Hawaiano Rey Kamehameha I estirando su mano derecha sobre las ocho principales islas de Hawái. Bajo las islas "Ua mau ke ea o ka ''āina i ka pono" (en español: "La vida de la tierra se perpetúa en honradez"). Arriba "Hawaii 1959", abajo "2008 E Pluribus Unum"', '1959-08-21', '2008-11-03', 517600000, true);