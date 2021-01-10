package com.empresa.proyecto.ws.rest.service;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.empresa.proyecto.ws.rest.vo.VOEmpresa;



public class EmpresaService {

	List<VOEmpresa> listEmpresas=new ArrayList<>();

	public EmpresaService(){

	}
	public JSONObject ValidacioncrearEmpresa(VOEmpresa datosEmpresa) throws JSONException{
		JSONObject item = new JSONObject();
		item.put("status", true);
		item.put("mensaje","exitoso");


		if(datosEmpresa.getTipoDocumento()==0 ){
			item.put("status", false);
			item.put("mensaje","El tipo de docimento debe ser mayor a 0");
		}
		if(datosEmpresa.getTelefono().isEmpty()) {
			item.put("status", false);
			item.put("mensaje","El telefono no puede estar vacio");
		}
		if(datosEmpresa.getRepresentanteLegal()==0) {
			item.put("status", false);
			item.put("mensaje","El representante legal debe ser mayor a 0");
		}
		if(datosEmpresa.getPais().isEmpty()) {
			item.put("status", false);
			item.put("mensaje","El Pais es obligatorio");
		}
		if(datosEmpresa.getNumeroIdentificacion().isEmpty()) {
			item.put("status", false);
			item.put("mensaje","EL numero de identificacion es obligatorio");
		}
		if(datosEmpresa.getNombre().isEmpty()) {
			item.put("status", false);
			item.put("mensaje","El Nombre es obligatorio");
		}
		if(datosEmpresa.getDireccion().isEmpty()) {
			item.put("status", false);
			item.put("mensaje","La Direccion es obligatoria");
		}
		if(datosEmpresa.getDepartamanto().isEmpty()) {
			item.put("status", false);
			item.put("mensaje","El Departamento es obligatorio");
		}
		if(datosEmpresa.getCiudad().isEmpty()) {
			item.put("status", false);
			item.put("mensaje","La ciudad obligatorio");
		}
		return item;
	}

	public Boolean crearEmpresa(VOEmpresa datosEmpresa)
	{
		Boolean bandera=true;
		try {
			listEmpresas.add(datosEmpresa);
		} catch (Exception e) {
			bandera=false;
			return bandera;
		}

		return bandera; 
	}

	public List<VOEmpresa> ConsulatEmpresa()
	{

		return listEmpresas; 
	}


}
