
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
