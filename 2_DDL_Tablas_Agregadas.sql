
-- tabla agregada con cantidad de rentas y teimpo promedio de renta calculados en la última fecha de corte
-- por auto y por agencias de renta y devolucion
create table rentas_por_auto_agencia(
  auto_id integer NOT NULL ,
  agencia_renta integer NOT NULL ,
  agencia_devolucion integer NOT NULL ,
  cantidad_rentas integer NOT NULL ,
  tiempo_promedio_renta float4 NOT NULL ,
  fecha_corte date NOT NULL 
);


-- tabla agregada igual que el anterior
-- pero guarda los calculos en todas las fechas de corte
-- para estudiar el progreso del timepo promedio de renta en el tiempo
create table rentas_por_auto_agencia_hist(
  auto_id integer NOT NULL ,
  agencia_renta integer NOT NULL ,
  agencia_devolucion integer NOT NULL ,
  cantidad_rentas integer NOT NULL ,
  tiempo_promedio_renta float4 NOT NULL ,
  fecha_corte date NOT NULL 
);
