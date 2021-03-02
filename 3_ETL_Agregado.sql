select a.auto_id, rf.agencia_renta, rf.agencia_devolucion, 
  rf.count(*) as cantidad_rentas , avg(rf.fecha_devolucion - rf.fecha_renta) as tiempo_promedio_renta, current_date as fecha
  
from autos a
left join rentas_fin rf
  on a.auto_id = rf.auto_id

group by 
  a.auto_id, rf.agencia_renta, rf.agencia_devolucion, current_date
  
  
  
  

