-- Tabla principal de rentas, tiene la info principal de una renta.
create table rentas (
  renta_id serial PRIMARY KEY ,
  auto_id integer NOT NULL ,
  fecha_renta timestamp NOT NULL ,
  fecha_devolucion timestamp NULL ,
  agencia_renta integer NOT NULL ,
  agencia_devolucion integer NULL ,
  km_renta float4 NOT NULL ,
  km_devolucion float4 NULL ,
  cliente_id integer NOT NULL ,
  empleado_renta integer NOT NULL ,
  empleado_devolucion integer NULL
);
  
  
  
-- tabla con el detalle de renta
create table renta_detalle (
  renta_id integer PRIMARY KEY ,
  seguro varchar(20) NOT NULL ,
  monto_seguro float4 NOT NULL ,
  monto_renta float4 NOT NULL ,
  monto_promociones float5 NOT NULL ,
  monto_total float6 NOT NULL ,
  tipo_de_pago varchar(20) NOT NULL 
);



-- autos que tiene la empresa
create table autos (
  auto_id serial PRIMARY KEY ,
  modelo varchar(50) NOT NULL ,
  marca  varchar(50) NOT NULL ,
  anio varchar(50) NOT NULL ,
  color varchar(50) NOT NULL ,
  agencia_actual integer NOT NULL ,
  km_actual float4 NOT NULL ,
  tamanio varchar(3) NOT NULL ,
  puertas smallint NOT NULL 
);



-- empleados de la empresa
create table empleados (
  empleado_id serial PRIMARY KEY ,
  empl_nombre varchar(100) NOT NULL ,
  fecha_inicio date NOT NULL ,
  nivel integer NOT NULL
);



--clientes
create table clientes (
  cliente_id serial PRIMARY KEY ,
  nombre varchar(50) NOT NULL ,
  direccion varchar(50) NOT NULL ,
  fecha_nacimiento date NOT NULL ,
  identifacion varchar(50) NOT NULL ,
  no_id varchar(50) NOT NULL
);


