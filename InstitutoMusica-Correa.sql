CREATE SCHEMA escuelaMusica;
USE escuelaMusica;

CREATE TABLE alumno(
	id_alumno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR (50) NOT NULL,
    telefono VARCHAR (20) NOT NULL,
    direccion VARCHAR (50) NOT NULL
);
CREATE TABLE curso(
	id_curso INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR (50) NOT NULL,
    nivel_habilidad VARCHAR (50) NOT NULL,
    tipo_instrumento VARCHAR (50) NOT NULL
);
CREATE TABLE inscripcion(
	id_inscripcion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fecha_inscripcion DATE NOT NULL,
    abono_inscripcion FLOAT NOT NULL,
    id_alumno INT NOT NULL, 
    id_curso INT NOT NULL,
    FOREIGN KEY (id_alumno) REFERENCES alumno (id_alumno),
    FOREIGN KEY (id_curso) REFERENCES curso (id_curso)
);