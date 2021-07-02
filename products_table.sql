CREATE TABLE IF NOT EXISTS productos (
  id_articulo INT AUTO_INCREMENT,
  codigo_articulo CHAR(30) NOT NULL,
  seccion CHAR(30) NOT NULL,
  nombre_articulo CHAR(30) NOT NULL,
  precio DECIMAL(10, 2) NOT NULL,
  fecha DATE NOT NULL,
  importado BOOLEAN DEFAULT FALSE NOT NULL,
  pais_origen CHAR(30) NOT NULL,
  foto LONGTEXT,

  /* Primary key */
  PRIMARY KEY( id_articulo ),
  UNIQUE( codigo_articulo )
);

INSERT INTO productos ( codigo_articulo, seccion, nombre_articulo, precio, fecha, importado, pais_origen, foto ) VALUES
  ('AR01',	'FERRETERÍA',	'DESTORNILLADOR',	6.63,	'2000-10-22',	FALSE,	'ESPAÑA', NULL),
  ('AR02',	'CONFECCIÓN',	'TRAJE CABALLERO',	284.58,	'2002-03-11',	TRUE,	'ITALIA', NULL),
  ('AR03',	'JUGUETERÍA', 'COCHE TELEDIRIGIDO',	159.45,	'2002-05-26',	TRUE,	'MARRUECOS', NULL),
  ('AR04',	'DEPORTES',	'RAQUETA TENIS',	93.47,	'2000-03-20',	TRUE,	'USA', NULL),
  ('AR05',	'DEPORTES',	'MANCUERNAS',	60.00,	'2000-09-13',	TRUE,	'USA', NULL),
  ('AR06',	'CONFECCIÓN',	'SERRUCHO',	30.20,	'2001-03-23',	TRUE,	'FRANCIA', NULL),
  ('AR07',	'JUGUETERÍA',	'CORREPASILLOS',	103.34,	'2000-04-11',	TRUE,	'JAPÓN', NULL),
  ('AR08',	'CONFECCIÓN',	'PANTALÓN SEÑORA',	174.23,	'2000-01-10',	TRUE,	'MARRUECOS', NULL),
  ('AR09',	'JUGUETERÍA',	'CONSOLA VIDEO',	442.54,	'2002-09-24',	TRUE,	'USA', NULL),
  ('AR10',	'CERÁMICA',	'TUBOS',	168.43,	'2000-04-02',	TRUE,	'CHINA', NULL),
  ('AR11',	'FERRETERÍA', 'LLAVE INGLESA',	24.40,	'2001-05-23',	TRUE,	'USA', NULL),
  ('AR12',	'CONFECCIÓN',	'CAMISA CABALLERO',	67.13,	'2002-08-11',	FALSE,	'ESPAÑA', NULL),
  ('AR13',	'JUGUETERÍA',	'TREN ELÉCTRICO',	1505.38,	'2001-07-03',	TRUE,	'JAPÓN', NULL),
  ('AR14',	'CERÁMICA',	'PLATO DECORATIVO',	54.09,	'2000-06-07',	TRUE,	'CHINA', NULL),
  ('AR15',	'FERRETERÍA',	'ALICATES',	6.74,	'2000-04-17',	TRUE,	'ITALIA', NULL),
  ('AR16',	'JUGUETERÍA',	'MUÑECA ANDADORA',	105.06,	'2001-04-01',	FALSE, 'ESPAÑA', NULL),
  ('AR17',	'DEPORTES',	'PISTOLA OLÍMPICA',	46.73,	'2001-02-02',	TRUE,	'SUECIA', NULL),
  ('AR18',	'CONFECCIÓN',	'BLUSA SRA.',	101.06,	'2000-03-18',	TRUE,	'CHINA', NULL),
  ('AR19',	'CERÁMICA',	'JUEGO DE TE',	43.27,	'2001-01-15',	TRUE,	'CHINA', NULL),
  ('AR20',	'CERÁMICA',	'CENICERO',	19.75,	'2001-07-02',	TRUE,	'JAPÓN', NULL),
  ('AR21',	'FERRETERÍA',	'MARTILLO',	11.40,	'2001-09-04',	FALSE, 'ESPAÑA', NULL),
  ('AR22',	'CONFECCIÓN',	'CAZADORA PIEL',	522.69,	'2001-07-10',	TRUE,	'ITALIA', NULL),
  ('AR23',	'DEPORTES',	'BALÓN RUGBY',	111.64,	'2000-11-11',	TRUE,	'USA', NULL),
  ('AR24',	'DEPORTES',	'BALÓN BALONCESTO',	75.27,	'2001-06-25',	TRUE,	'JAPÓN', NULL),
  ('AR25',	'JUGUETERÍA',	'FUERTE DE SOLDADOS',	143.70,	'2000-11-25',	TRUE,	'JAPÓN', NULL),
  ('AR26',	'CONFECCIÓN',	'ABRIGO CABALLERO',	500000.00,	'2002-04-05',	TRUE,	'ITALIA', NULL),
  ('AR27',	'DEPORTES',	'BALÓN FÚTBOL',	43.91,	'2002-04-07',	FALSE,	'ESPAÑA', NULL),
  ('AR28',	'CONFECCIÓN',	'ABRIGO SRA',	360.07,	'2001-05-03',	TRUE,	'MARRUECOS', NULL),
  ('AR29',	'FERRETERÍA',	'DESTORNILLADOR',	9.06,	'2002-02-20',	TRUE,	'FRANCIA', NULL),
  ('AR30',	'JUGUETERÍA',	'PISTOLA CON SONIDOS',	57.25,	'2001-04-15',	FALSE,	'ESPAÑA', NULL),
  ('AR31',	'DEPORTES',	'CRONÓMETRO',	439.18,	'2002-01-03',	TRUE,	'USA', NULL),
  ('AR32',	'CERÁMICA',	'MACETA',	29.04,	'2000-02-23',	FALSE,	'ESPAÑA', NULL),
  ('AR33',	'OFICINA',	'PIE DE LÁMPARA',	39.76,	'2001-05-27',	TRUE,	'TURQUÍA', NULL),
  ('AR34',	'FERRETERÍA',	'LIMA GRANDE',	22.07,	'2002-08-10',	FALSE,	'ESPAÑA', NULL),
  ('AR35',	'FERRETERÍA',	'JUEGO DE BROCAS',	15.10,	'2002-04-07',	TRUE,	'TAIWÁN', NULL),
  ('AR36',	'CONFECCIÓN',	'CINTURÓN DE PIEL',	4.33,	'2002-05-12',	FALSE,	'ESPAÑA', NULL),
  ('AR37',	'DEPORTES',	'CAÑA DE PESCA',	270.00,	'2002-02-14',	TRUE,	'USA', NULL),
  ('AR38',	'CERÁMICA',	'JARRA CHINA',	127.77,	'2002-09-02',	TRUE,	'CHINA', NULL),
  ('AR39',	'DEPORTES',	'BOTA ALPINISMO',	144.00,	'2002-05-05',	FALSE,	'ESPAÑA', NULL),
  ('AR40',	'DEPORTES',	'PALAS DE PING PONG',	21.60,	'2002-02-02',	FALSE,	'ESPAÑA', NULL);