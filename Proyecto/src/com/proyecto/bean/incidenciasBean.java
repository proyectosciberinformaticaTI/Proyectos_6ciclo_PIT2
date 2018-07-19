package com.proyecto.bean;

import java.io.File;
import java.util.Date;

public class incidenciasBean {
	
	
	
			

private int idtb_incidencias;
private int idagraviado;
private agraviadosBean agraviados;
private String agresor;
private moderadorBean moderador;
private Date  fecharegistro;
private zonaBean zona;


private File fotos;
private String fotosFileName;
private String fotosContentType;
private byte[] fotosBytes;

private tipoagravioBean tipo;
private distritoBean distrito;
private String descripcion;





public String getDescripcion() {
	return descripcion;
}
public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}
public int getIdtb_incidencias() {
	return idtb_incidencias;
}
public void setIdtb_incidencias(int idtb_incidencias) {
	this.idtb_incidencias = idtb_incidencias;
}
public int getIdagraviado() {
	return idagraviado;
}
public void setIdagraviado(int idagraviado) {
	this.idagraviado = idagraviado;
}
public agraviadosBean getAgraviados() {
	return agraviados;
}
public void setAgraviados(agraviadosBean agraviados) {
	this.agraviados = agraviados;
}
public String getAgresor() {
	return agresor;
}
public void setAgresor(String agresor) {
	this.agresor = agresor;
}
public moderadorBean getModerador() {
	return moderador;
}
public void setModerador(moderadorBean moderador) {
	this.moderador = moderador;
}
public Date getFecharegistro() {
	return fecharegistro;
}
public void setFecharegistro(Date fecharegistro) {
	this.fecharegistro = fecharegistro;
}
public zonaBean getZona() {
	return zona;
}
public void setZona(zonaBean zona) {
	this.zona = zona;
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
public tipoagravioBean getTipo() {
	return tipo;
}
public void setTipo(tipoagravioBean tipo) {
	this.tipo = tipo;
}
public distritoBean getDistrito() {
	return distrito;
}
public void setDistrito(distritoBean distrito) {
	this.distrito = distrito;
}





}
