package com.empresa.proyecto.ws.rest.ws;

import javax.ws.rs.core.MediaType;

import com.empresa.proyecto.ws.rest.service.EmpresaService;
import com.empresa.proyecto.ws.rest.vo.VOEmpresa;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;


@Path("/Empresas")
public class Empresaws {
	public static EmpresaService serv =  new EmpresaService();

	@POST
	@Path("/CrearEmpresa")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces({MediaType.APPLICATION_JSON})
	public JSONObject crearEmpresa(VOEmpresa vo) throws JSONException {


		JSONObject Respt = serv.ValidacioncrearEmpresa(vo);
		if ((boolean) Respt.get("status")) {
			boolean bandera = serv.crearEmpresa(vo);
			if (!bandera) {
				return Respt.put("mensaje","Error interno al insertar la informacion") ;
			}
			return Respt;
		}else {
			return Respt;
		}

	}


	@GET
	@Path("/ConsultarEmpresa")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces({MediaType.APPLICATION_JSON})
	public List<VOEmpresa> Consulta() {

		List<VOEmpresa> rest =	serv.ConsulatEmpresa();
		return rest ;

	}



}
