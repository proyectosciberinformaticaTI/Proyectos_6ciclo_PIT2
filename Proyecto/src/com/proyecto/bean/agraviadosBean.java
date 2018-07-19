package com.proyecto.bean;
import java.io.File;
public class agraviadosBean {

	private int idagraviado;
	private String nom_apellido;
	private String fecha_nacimiento;
	private String sexo;
	private String direccion;
	private String referencia_direccion;
	private int telefono;
	private String correo;
	private String testimonio;
	
	
	
	private File fotos;
	private String fotosFileName;
	private String fotosContentType;
	private byte[] fotosBytes;
	
	
	
	private String usuario;
	private String contrasena;
	private String nuevacontrasena;
	
	private int dni;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 
	
	
	
	
	
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}

	
	
	
	
	
	
	public String getNuevacontrasena() {
		return nuevacontrasena;
	}
	public void setNuevacontrasena(String nuevacontrasena) {
		this.nuevacontrasena = nuevacontrasena;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	
	
	
	public String getContrasena() {
		return contrasena;
	}
	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	public int getIdagraviado() {
		return idagraviado;
	}
	public void setIdagraviado(int idagraviado) {
		this.idagraviado = idagraviado;
	}
	public String getNom_apellido() {
		return nom_apellido;
	}
	public void setNom_apellido(String nom_apellido) {
		this.nom_apellido = nom_apellido;
	}
	public String getFecha_nacimiento() {
		return fecha_nacimiento;
	}
	public void setFecha_nacimiento(String fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getReferencia_direccion() {
		return referencia_direccion;
	}
	public void setReferencia_direccion(String referencia_direccion) {
		this.referencia_direccion = referencia_direccion;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getTestimonio() {
		return testimonio;
	}
	public void setTestimonio(String testimonio) {
		this.testimonio = testimonio;
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
	
	
	
}
