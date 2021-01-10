select vh.placa, td.documento, emp.numero_identificacion, emp.nombre_empresa, count(vhc.conductores_idconductores) from vehiculos as vh
inner join empresas as emp on emp.idempresa=vh.empresas_idempresas
inner join tipo_documento as td on td.id_tipo_documento= emp.tipo_documento_idtipodocumento
inner join vehiculos_has_conductores as vhc on vhc.vehiculos_idvehiculos = vh.idvehiculos
group by vhc.conductores_idconductores,vh.placa, td.documento, emp.numero_identificacion, emp.nombre_empresa
having count(vhc.conductores_idconductores)>2
order by vh.placa