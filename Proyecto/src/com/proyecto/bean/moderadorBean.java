package com.proyecto.bean;

import java.io.File;

public class moderadorBean {

	private int idmoderador;
	private String nom_apellido;
	private String cargomoderador;
	private String entidad;

	
	private File fotos;
	private String fotosFileName;
	private String fotosContentType;
	private byte[] fotosBytes;
	
	private int dni;
	private String correo;
	private int celular;
	private int telefono;
		private distritoBean distrito;
	private String contrasena;
	private String usuario;
	
	

	public String getContrasena() {
		return contrasena;
	}
	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public int getIdmoderador() {
		return idmoderador;
	}
	public void setIdmoderador(int idmoderador) {
		this.idmoderador = idmoderador;
	}
	public String getNom_apellido() {
		return nom_apellido;
	}
	public void setNom_apellido(String nom_apellido) {
		this.nom_apellido = nom_apellido;
	}
	public String getCargomoderador() {
		return cargomoderador;
	}
	public void setCargomoderador(String cargomoderador) {
		this.cargomoderador = cargomoderador;
	}
	public String getEntidad() {
		return entidad;
	}
	public void setEntidad(String entidad) {
		this.entidad = entidad;
	}

	

	
	
	public File getFotos() {
		return fotos;
	}
	public void setFotos(File fotos) {
		this.fotos = fotos;
	}
	public String getFotosFileName() {
		return fotosFileName;
	}
	public void setFotosFileName(String fotosFileName) {
		this.fotosFileName = fotosFileName;
	}
	public String getFotosContentType() {
		return fotosContentType;
	}
	public void setFotosContentType(String fotosContentType) {
		this.fotosContentType = fotosContentType;
	}
	public byte[] getFotosBytes() {
		return fotosBytes;
	}
	public void setFotosBytes(byte[] fotosBytes) {
		this.fotosBytes = fotosBytes;
	}
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public int getCelular() {
		return celular;
	}
	public void setCelular(int celular) {
		this.celular = celular;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public distritoBean getDistrito() {
		return distrito;
	}
	public void setDistrito(distritoBean distrito) {
		this.distrito = distrito;
	}
	
}
