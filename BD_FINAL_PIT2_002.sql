create database bd_expresatedb05;
use bd_expresatedb05;

create table tb_agraviados(
idagraviado int primary key AUTO_INCREMENT,
nom_apellido varchar(50),
fecha_nacimiento date,
sexo varchar(50),
direccion varchar(50),
referencia_direccion varchar(50),
telefono int(11),
correo varchar(50),
testimonio varchar(50),
fotos longblob,
dni int(11),
usuario varchar(50),
contrasena varchar(50)
);
create table tb_moderador(
idmoderador int primary key AUTO_INCREMENT,
nom_apellido varchar(50),
cargomoderador varchar(50),
entidad varchar(50),
fotos longblob,
dni int,
correo varchar(50),
celular int,
telefono int,
idtb_distrito int,
usuario varchar(50),
contrasena varchar(50)
);


create table tb_distrito(
idtb_distrito int primary key AUTO_INCREMENT,
nombre varchar(50),
idtb_zona int
);
create table tb_zona(
idtb_zona int primary key AUTO_INCREMENT,
nombre varchar(50)
);
create table tb_tipo_agravio(
idtb_tipo_agravio int primary key AUTO_INCREMENT,
nombre varchar(50)
);
create table tb_incidencias(
idtb_incidencias int primary key AUTO_INCREMENT,
idagraviado int,
agresor varchar(50),
fotos longblob,
idmoderador int,
fecharegistro date,
idtb_tipo_agravio int,
idtb_distrito int,
descripcion varchar(50),
idtb_zona int
);
create table tb_detalle_asigna_moderador(
id_detalle int primary key AUTO_INCREMENT,
idtb_distrito int,
idtb_zona int,
idmoderador int
);
create table tbasigna_foto(
id_tbasigna_foto int primary key AUTO_INCREMENT,
fotos longblob,
idtb_incidencias int,
fecharegistro date
);
alter table tb_moderador
add foreign key (idtb_distrito) references tb_distrito(idtb_distrito);
alter table tb_incidencias
add foreign key (idagraviado) references tb_agraviados(idagraviado);
alter table tb_incidencias
add foreign key (idmoderador) references tb_moderador(idmoderador);
alter table tb_incidencias
add foreign key (idtb_tipo_agravio) references tb_tipo_agravio(idtb_tipo_agravio);
alter table tb_incidencias
add foreign key (idtb_distrito) references   tb_distrito(idtb_distrito);
alter table tb_detalle_asigna_moderador
add foreign key (idtb_distrito) references   tb_distrito(idtb_distrito);
alter table tb_detalle_asigna_moderador
add foreign key (idtb_zona) references tb_zona(idtb_zona);
alter table tb_detalle_asigna_moderador
add foreign key (idmoderador) references tb_moderador(idmoderador);
alter table tbasigna_foto
add foreign key (idtb_incidencias) references tb_incidencias(idtb_incidencias);
alter table tb_incidencias
add foreign key (idtb_zona) references tb_zona(idtb_zona);



alter table tb_distrito
add foreign key (idtb_zona) references tb_zona(idtb_zona);















insert into tb_zona(nombre) values('Norte');
insert into tb_zona(nombre) values('Sur');
insert into tb_zona(nombre) values('Este');
insert into tb_zona(nombre) values('Centro');
insert into tb_zona(nombre) values('Oeste');



insert into tb_distrito(nombre,idtb_zona) values('San Martin de Porres',1);
insert into tb_distrito(nombre,idtb_zona) values('Comas',1);
insert into tb_distrito(nombre,idtb_zona) values('Miraflores',2);
insert into tb_distrito(nombre,idtb_zona) values('Independencia',2);
insert into tb_distrito(nombre,idtb_zona) values('San Borja',2);
insert into tb_distrito(nombre,idtb_zona) values('Javier Prado',3);
insert into tb_distrito(nombre,idtb_zona) values('Javier Prado',5);


insert into tb_tipo_agravio(nombre) values('Fisico');
insert into tb_tipo_agravio(nombre) values('Psicologico');
insert into tb_tipo_agravio(nombre) values('Sexual');

insert into  tb_moderador(nom_apellido,cargomoderador,entidad,dni,correo,celular,telefono,idtb_distrito,usuario,contrasena)
 values('Maria','ADMINISTRADOR',888877,458956,'projectinformatic1196@gmail.com',944595,8484224,1,'mar123','mar123');
 
 insert into  tb_moderador(nom_apellido,entidad,dni,correo,celular,telefono,idtb_distrito,usuario,contrasena)
 values('Jose Ortega',888475,56458956,'jos789@gmail.com',9445957,58484224,2,'jos123','jos');
 
 insert into  tb_moderador(nom_apellido,entidad,dni,correo,celular,telefono,idtb_distrito,usuario,contrasena)
 values('Diego Alvarez',888422,56448956,'dial456@gmail.com',9445157,584848,2,'die123','diego');
 
  insert into  tb_moderador(nom_apellido,entidad,dni,correo,celular,telefono,idtb_distrito,usuario,contrasena)
 values('Mark Lock',789522,70587098,'jmark@gmail.com',956131278,4823965,3,'mark123','mark');
 
 insert into  tb_moderador(nom_apellido,entidad,dni,correo,celular,telefono,idtb_distrito,usuario,contrasena)
 values('Joel Arauzo Masgo',999422,70587094,'sumaperu1196@hotmail.com',992729177,4899967,3,'jaam123','jaam');
 
 
  insert into  tb_moderador(nom_apellido,entidad,dni,correo,celular,telefono,idtb_distrito,usuario,contrasena)
 values('Jeycot Alcas Avila',996622,70587888,'avila789@hotmail.com',992724444,4899555,1,'jeycot123','jeycot');
 
 
 
 

 