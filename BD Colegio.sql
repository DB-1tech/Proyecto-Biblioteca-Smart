CREATE DATABASE Biblioteca2
-- foreign key= 

CREATE TABLE trabajadores( 
ID_T VARCHAR(50) PRIMARY KEY NOT NULL, 
Nombre_T VARCHAR(50) NOT NULL ,
Apellido_Paterno_T VARCHAR(30) NOT NULL,
Apellido_Materno_T VARCHAR(30) NOT NULL,
Puesto_Trabajo VARCHAR(50) NOT NULL,
Responsable_T VARCHAR(120) NOT NULL,
Nacionalidad_T CHAR(50) ,
Telefono_T VARCHAR(12),
Usuario VARCHAR(50) NOT NULL,
Contraseña VARCHAR(50) NOT NULL
)
INSERT INTO trabajadores (ID_T, Nombre_T, Apellido_Paterno_T, Apellido_Materno_T, Puesto_Trabajo, Responsable_T, Nacionalidad_T, Telefono_T, Usuario, Contraseña) VALUES ('14849139-9', 'Christopher', 'Avila', 'Bibliotecario','Martin', 'Annette Peterson', 'Chileno' , '76436970' , 'Chris', 'ca9522');
INSERT INTO trabajadores (ID_T, Nombre_T, Apellido_Paterno_T, Apellido_Materno_T, Puesto_Trabajo, Responsable_T, Nacionalidad_T, Telefono_T, Usuario, Contraseña) VALUES ('14437348-0', 'Monica', 'Perez', 'Casas', 'Profesora','Annette Peterson', 'Chileno' , '79836979', 'Mon02', 'pz90120');
INSERT INTO trabajadores (ID_T, Nombre_T, Apellido_Paterno_T, Apellido_Materno_T, Puesto_Trabajo, Responsable_T, Nacionalidad_T, Telefono_T, Usuario, Contraseña) VALUES ('13009139-7', 'Jorge', 'Walker', 'Smith','Bibliotecario', 'Pedro Soto', 'Chileno' , '76436970', 'Jorge01', 'j0115');
INSERT INTO trabajadores (ID_T, Nombre_T, Apellido_Paterno_T, Apellido_Materno_T, Puesto_Trabajo, Responsable_T, Nacionalidad_T, Telefono_T, Usuario, Contraseña) VALUES ('10999164-9', 'Diego', 'Salfate', 'Olea', 'Profesor','Annette Peterson', 'Chileno' , '76136775' , 'Diego4', 'ds5444');
INSERT INTO trabajadores (ID_T, Nombre_T, Apellido_Paterno_T, Apellido_Materno_T, Puesto_Trabajo, Responsable_T, Nacionalidad_T, Telefono_T, Usuario, Contraseña) VALUES ('8634532-8', 'Catherine', 'Parra', 'Rojas','Profesora','Pedro Soto', 'Chileno' , '76490905' , 'cat1', 'cr0875');
CREATE TABLE alumnos(
ID_A VARCHAR(50) PRIMARY KEY NOT NULL,
Nombre_A VARCHAR(50) NOT NULL,
Apellido_Paterno VARCHAR(50) NOT NULL,
Apellido_Materno VARCHAR(50) NOT NULL,
Usuario VARCHAR(50) NOT NULL,
Contraseña VARCHAR(50) NOT NULL
)
INSERT INTO alumnos (ID_A, Nombre_A, Apellido_Paterno, Apellido_Materno, Usuario, Contraseña) VALUES ('20121385-3', 'Nicolas', 'Flores', 'Barraza','ico01', 'nf2100');
INSERT INTO alumnos (ID_A, Nombre_A, Apellido_Paterno, Apellido_Materno, Usuario, Contraseña) VALUES ('19128365-9', 'Andrea', 'Duarte', 'Barra', 'andreaD', 'ad1995');
INSERT INTO alumnos (ID_A, Nombre_A, Apellido_Paterno, Apellido_Materno, Usuario, Contraseña) VALUES ('20973360-4', 'Ignacia', 'Herrera', 'Navarrete', 'ignacia01', 'ih2296');
INSERT INTO alumnos (ID_A, Nombre_A, Apellido_Paterno, Apellido_Materno, Usuario, Contraseña) VALUES ('15939300-8', 'Javier', 'Rios', 'Lopez',  'javier02', 'jr0000');
INSERT INTO alumnos (ID_A, Nombre_A, Apellido_Paterno, Apellido_Materno, Usuario, Contraseña) VALUES ('14739270-9', 'Alexandra', 'Apablaza', 'Rojas', 'alex01', 'ap2000');

CREATE TABLE libros(
Cod_Libro VARCHAR(50) PRIMARY KEY NOT NULL,
Nombre_Libro VARCHAR(50) NOT NULL,
Tipo VARCHAR(50) NOT NULL,
Cantidad_Ejemplares VARCHAR(50) NOT NULL,
Stock_L VARCHAR(50) NOT NULL,
ID_Categoria VARCHAR(50) NOT NULL,
Disponible VARCHAR(50) NOT NULL 


)
INSERT INTO libros (Cod_Libro, Nombre_Libro, Tipo, Cantidad_Ejemplares,Stock_L,ID_Categoria,Disponible) VALUES ('17234', 'Lenguaje','Educacional', '750','10','1','1');
INSERT INTO libros (Cod_Libro, Nombre_Libro, Tipo, Cantidad_Ejemplares,Stock_L,ID_Categoria,Disponible) VALUES ('17235', 'Matematicas','Educacional','750','60','1','1');
INSERT INTO libros (Cod_Libro, Nombre_Libro, Tipo, Cantidad_Ejemplares,Stock_L,ID_Categoria,Disponible) VALUES ('17236', 'Ciencias','Educacional','750','56','1','1');
INSERT INTO libros (Cod_Libro, Nombre_Libro, Tipo, Cantidad_Ejemplares,Stock_L,ID_Categoria,Disponible) VALUES ('17237', 'Papeluchos','Aventuras','120','16','2','1');
INSERT INTO libros (Cod_Libro, Nombre_Libro, Tipo, Cantidad_Ejemplares,Stock_L,ID_Categoria,Disponible) VALUES ('17238', 'Harry Potter','Aventuras','120','43','2','1'); 


CREATE TABLE responsable(
ID_R VARCHAR(50) PRIMARY KEY NOT NULL,
Nombre_R VARCHAR(50) NOT NULL,
Apellido_Paterno VARCHAR(50) NOT NULL,
Apellido_Materno VARCHAR(50) NOT NULL,
Telefono VARCHAR(50) NOT NULL,
Usuario VARCHAR(50) NOT NULL,
Contraseña VARCHAR(50) NOT NULL
)
INSERT INTO responsable (ID_R, Nombre_R, Apellido_Paterno, Apellido_Materno, Telefono, Usuario, Contraseña) VALUES ('10446943-8', 'Annette', 'Peterson', 'Smith', '85436765', 'annette', 'ap2121');
INSERT INTO responsable (ID_R, Nombre_R, Apellido_Paterno, Apellido_Materno, Telefono, Usuario, Contraseña) VALUES ('10456792-7', 'Pedro', 'Soto', 'Parra', '85796905', 'pedro', 'ps1975');

CREATE TABLE area (
Cod_S_Area VARCHAR(50) PRIMARY KEY NOT NULL,
Nombre_Area VARCHAR(50) NOT NULL,
ID_Alumno_Area VARCHAR(50) NOT NULL,
ID_Trabajador_Area VARCHAR(50) NOT NULL,
ID_Responsable_Area VARCHAR(50) NOT NULL
)
INSERT INTO area (Cod_S_Area, Nombre_Area, ID_Alumno_Area, ID_Trabajador_Area, ID_Responsable_Area) VALUES ('101', 'Salas de Clases', '20121385-3', '14849139-9', '10446943-8');
INSERT INTO area (Cod_S_Area, Nombre_Area, ID_Alumno_Area, ID_Trabajador_Area, ID_Responsable_Area) VALUES ('102', 'Laborario',  '19128365-9', '14437348-0', '10456792-7');
INSERT INTO area (Cod_S_Area, Nombre_Area, ID_Alumno_Area, ID_Trabajador_Area, ID_Responsable_Area) VALUES ('103', 'Biblioteca', '15939300-8', '10999164-9', '10446943-8');

CREATE TABLE prestamos(
ID_Prestamo VARCHAR(50) PRIMARY KEY NOT NULL,
ID_Libro VARCHAR(50) NOT NULL,
ID_Alumno VARCHAR(50) NOT NULL,
ID_Trabajador VARCHAR(50) NOT NULL,
Fecha_Comienzo VARCHAR(50) NOT NULL,
Fecha_Devolucion VARCHAR(50) NOT NULL,
Estado_Prestamo VARCHAR(50) NOT NULL,
Cantidad_Prestamo VARCHAR(50) NOT NULL,
Stock VARCHAR(50) NOT NULL
)

CREATE TABLE categoria(
ID_Categoria VARCHAR(50) PRIMARY KEY NOT NULL,
Nombre_Categoria VARCHAR(50) NOT NULL
)
INSERT INTO categoria (ID_Categoria,Nombre_Categoria) VALUES ('1','Educacional');
INSERT INTO categoria (ID_Categoria,Nombre_Categoria) VALUES ('2','Aventuras');

-- inserts 
INSERT INTO prestamos(ID_Prestamo, ID_Libro, ID_Alumno, ID_Trabajador, Fecha_Comienzo, Fecha_Devolucion, Estado_Prestamo, Cantidad_Prestamo,Stock) VALUES ('p1111','17234', '20121385-3', '14849139-9', '20-08-20', '28-08-20', 'Devuelto','13', '10');
INSERT INTO prestamos(ID_Prestamo, ID_Libro, ID_Alumno, ID_Trabajador, Fecha_Comienzo, Fecha_Devolucion, Estado_Prestamo, Cantidad_Prestamo,Stock) VALUES ('p1112','17235', '19128365-9', '14437348-0', '21-08-20', '29-09-20', 'Devuelto','50','60');
INSERT INTO prestamos(ID_Prestamo, ID_Libro, ID_Alumno, ID_Trabajador, Fecha_Comienzo, Fecha_Devolucion, Estado_Prestamo, Cantidad_Prestamo,Stock) VALUES ('p1113','17236', '20973360-4', '13009139-7', '20-08-20', '13-09-20', 'Pendiente','34','56');
INSERT INTO prestamos(ID_Prestamo, ID_Libro, ID_Alumno, ID_Trabajador, Fecha_Comienzo, Fecha_Devolucion, Estado_Prestamo, Cantidad_Prestamo,Stock) VALUES ('p1114','17237', '15939300-8', '10999164-9', '20-09-20', '29-09-20', 'Pendiente','15','16');
INSERT INTO prestamos(ID_Prestamo, ID_Libro, ID_Alumno, ID_Trabajador, Fecha_Comienzo, Fecha_Devolucion, Estado_Prestamo ,Cantidad_Prestamo,Stock) VALUES ('p1115','17238', '14739270-9', '8634532-8', '21-09-20', '28-09-20', 'Devuelto','54','43');

-- zona drop--
DROP TABLE prestamos;
DROP TABLE area;
DROP TABLE responsable;
DROP TABLE libros;
DROP TABLE alumnos;
DROP TABLE trabajadores;