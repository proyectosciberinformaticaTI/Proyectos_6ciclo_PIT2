package com.proyecto.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.proyecto.bean.agraviadosBean;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.tipoagravioBean;
import com.proyecto.bean.zonaBean;
import com.proyecto.service.IncidenciasServicelmpl;
import com.proyecto.util.Constantes;
@SuppressWarnings("serial")
@ParentPackage(value = "dawi")
public class IncidenciasRegistroAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	

	private static final Log log = LogFactory.getLog(IncidenciasAction.class);

	
	protected HttpServletRequest servletRequest;

	protected HttpServletResponse servletResponse;
	private String agresor;
 private String idtb_zona;
 private String idtb_tipo_agravio;
 private String idtb_distrito;
 private File fotos;

 private String descripcion;
 private String idagraviado;
 
 


public String getAgresor() {
	return agresor;
}
public void setAgresor(String agresor) {
	this.agresor = agresor;
}
public String getIdtb_zona() {
	return idtb_zona;
}
public void setIdtb_zona(String idtb_zona) {
	this.idtb_zona = idtb_zona;
}
public String getIdtb_tipo_agravio() {
	return idtb_tipo_agravio;
}
public void setIdtb_tipo_agravio(String idtb_tipo_agravio) {
	this.idtb_tipo_agravio = idtb_tipo_agravio;
}
public String getIdtb_distrito() {
	return idtb_distrito;
}
public void setIdtb_distrito(String idtb_distrito) {
	this.idtb_distrito = idtb_distrito;
}
public File getFotos() {
	return fotos;
}
public void setFotos(File fotos) {
	this.fotos = fotos;
}
public String getDescripcion() {
	return descripcion;
}
public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}
public String getIdagraviado() {
	return idagraviado;
}
public void setIdagraviado(String idagraviado) {
	this.idagraviado = idagraviado;
}
public static Log getLog() {
	return log;
}
public void setServletRequest(HttpServletRequest servletRequest) {
	this.servletRequest = servletRequest;
}
public void setServletResponse(HttpServletResponse servletResponse) {
	this.servletResponse = servletResponse;
}
 
}
