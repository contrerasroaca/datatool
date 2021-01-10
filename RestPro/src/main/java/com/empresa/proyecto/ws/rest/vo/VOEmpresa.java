package com.empresa.proyecto.ws.rest.vo;

public class VOEmpresa {


	public int getTipoDocumento() {
		return tipoDocumento;
	}
	public void setTipoDocumento(int tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}
	public int getRepresentanteLegal() {
		return representanteLegal;
	}
	public void setRepresentanteLegal(int representanteLegal) {
		this.representanteLegal = representanteLegal;
	}
	public String getNumeroIdentificacion() {
		return numeroIdentificacion;
	}
	public void setNumeroIdentificacion(String numeroIdentificacion) {
		this.numeroIdentificacion = numeroIdentificacion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public String getDepartamanto() {
		return departamanto;
	}
	public void setDepartamanto(String departamanto) {
		this.departamanto = departamanto;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
	private int tipoDocumento = 0;
	private int representanteLegal = 0;
	private String numeroIdentificacion;
	private String nombre;
	private String direccion;
	private String telefono;
	private String ciudad;
	private String departamanto;
	private String pais;
}
