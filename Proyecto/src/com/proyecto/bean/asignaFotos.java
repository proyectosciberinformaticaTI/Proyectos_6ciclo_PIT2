package com.proyecto.bean;

import java.io.File;

public class asignaFotos {
private int id_tbasigna_foto;

private File fotos;
private String fotosFileName;
private String fotosContentType;
private byte[] fotosBytes;
private incidenciasBean incidencia;
private int idtb_incidencias;




public int getIdtb_incidencias() {
	return idtb_incidencias;
}
public void setIdtb_incidencias(int idtb_incidencias) {
	this.idtb_incidencias = idtb_incidencias;
}
public int getId_tbasigna_foto() {
	return id_tbasigna_foto;
}
public void setId_tbasigna_foto(int id_tbasigna_foto) {
	this.id_tbasigna_foto = id_tbasigna_foto;
}

public incidenciasBean getInci() {
	return incidencia;
}
public void setInci(incidenciasBean incidencia) {
	this.incidencia = incidencia;
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
public incidenciasBean getIncidencia() {
	return incidencia;
}
public void setIncidencia(incidenciasBean incidencia) {
	this.incidencia = incidencia;
}




}
