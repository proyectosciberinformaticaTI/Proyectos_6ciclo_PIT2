package com.proyecto.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.proyecto.bean.detalleAsignaModerador;
import com.proyecto.bean.distritoBean;
import com.proyecto.service.UbigeoServicelmpl;

//Para identificar que todo el proyecto este todo en mismo cotexto o paquete, de trabajo.
@ParentPackage(value = "dawi")
public class UbigeoAction extends ActionSupport {

	private static final Log log = LogFactory.getLog(UbigeoAction.class);

	private static final long serialVersionUID = 1L;
	private List<detalleAsignaModerador> lstzona = new ArrayList<detalleAsignaModerador>();
	private List<detalleAsignaModerador> lstdistrito = new ArrayList<detalleAsignaModerador>();
	private List<detalleAsignaModerador> lstmoderador = new ArrayList<detalleAsignaModerador>();
	private List<distritoBean> lstzonas = new ArrayList<distritoBean>();
	private List<distritoBean> lstdistritos = new ArrayList<distritoBean>();
	private List<distritoBean> lstmoderadores = new ArrayList<distritoBean>();

	private Map<String, Object> session = (Map<String, Object>) ActionContext.getContext().getSession();
	private UbigeoServicelmpl service = new UbigeoServicelmpl();
	private String zona;
	private String distrito;
	private String moderador;
	
	
	
	public List<distritoBean> getLstdistritos() {
		return lstdistritos;
	}

	public void setLstdistritos(List<distritoBean> lstdistritos) {
		this.lstdistritos = lstdistritos;
	}

	public List<distritoBean> getLstmoderadores() {
		return lstmoderadores;
	}

	public void setLstmoderadores(List<distritoBean> lstmoderadores) {
		this.lstmoderadores = lstmoderadores;
	}

	public List<distritoBean> getLstzonas() {
		return lstzonas;
	}

	public void setLstzonas(List<distritoBean> lstzonas) {
		this.lstzonas = lstzonas;
	}

	//Eliminar todas advertencias en los metodos,parametros, o en sus casteos.
	@SuppressWarnings("unchecked")
	//nombra a la accion de los combox anidados para ubicar al moderador, en tal distrito y zona
	@Action(value = "/cargaUbigeo", results = { @Result(name = "success", type = "json") })
	public String cargaUbigeo() throws Exception {
		log.info("Dentro de carga departamento origen");
		log.info("Zona : " + zona);
		log.info("Distrito : " + distrito);
		log.info("Moderador : " + moderador);
		if (session.get("objZona") == null) {
			lstzona = service.consultaXUbigeoXZona();
			session.put("objZona", lstzona);
		} else {
			lstzona = (List<detalleAsignaModerador>) session.get("objZona");
		}

		if (zona != null && !zona.trim().equals("") && !zona.trim().equals("-1")) {

			detalleAsignaModerador ubigeoBean = new detalleAsignaModerador();
			ubigeoBean.setIdtb_zona(Integer.parseInt(zona));
			lstdistrito = service.consultaXUbigeoXDistrito(ubigeoBean);
		}

		if (zona != null && distrito != null && !zona.trim().equals("") && !distrito.trim().equals("")
				&& !zona.trim().equals("-1") && !distrito.trim().equals("-1")) {
			log.info("Dentro de carga distrito destino");
			detalleAsignaModerador ubigeoBean2 = new detalleAsignaModerador();
			ubigeoBean2.setIdtb_zona(Integer.parseInt(zona));
			ubigeoBean2.setIdtb_distrito(Integer.parseInt(distrito));
			lstmoderador = service.consultaXUbigeoXModerador(ubigeoBean2);
		}

		return SUCCESS;
	}

	public List<detalleAsignaModerador> getLstzona() {
		return lstzona;
	}

	public void setLstzona(List<detalleAsignaModerador> lstzona) {
		this.lstzona = lstzona;
	}

	public List<detalleAsignaModerador> getLstdistrito() {
		return lstdistrito;
	}

	public void setLstdistrito(List<detalleAsignaModerador> lstdistrito) {
		this.lstdistrito = lstdistrito;
	}

	public List<detalleAsignaModerador> getLstmoderador() {
		return lstmoderador;
	}

	public void setLstmoderador(List<detalleAsignaModerador> lstmoderador) {
		this.lstmoderador = lstmoderador;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public UbigeoServicelmpl getService() {
		return service;
	}

	public void setService(UbigeoServicelmpl service) {
		this.service = service;
	}

	public String getZona() {
		return zona;
	}

	public void setZona(String zona) {
		this.zona = zona;
	}

	public static Log getLog() {
		return log;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getDistrito() {
		return distrito;
	}

	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}

	public String getModerador() {
		return moderador;
	}

	public void setModerador(String moderador) {
		this.moderador = moderador;
	}
	
	

	@SuppressWarnings("unchecked")
	@Action(value = "/cargaUbigeonuevas", results = { @Result(name = "success", type = "json") })
	public String cargaUbigeonuevas() throws Exception {
		log.info("Dentro de carga departamento origen");
		log.info("Zona : " + zona);
		log.info("Distrito : " + distrito);
		log.info("Moderador : " + moderador);
		if (session.get("objZona") == null) {
			lstzonas = service.consultaXUbigeoXzonanuevas();
			session.put("objZona", lstzona);
		} else {
			lstzonas = (List<distritoBean>) session.get("objZona");
		}

		if (zona != null && !zona.trim().equals("") && !zona.trim().equals("-1")) {

			distritoBean ubigeoBean = new distritoBean();
			ubigeoBean.setIdtb_zona(Integer.parseInt(zona));
			lstdistritos = service.consultaXUbigeoXDistritosnuevas(ubigeoBean);
		}

		if (zona != null && distrito != null && !zona.trim().equals("") && !distrito.trim().equals("")
				&& !zona.trim().equals("-1") && !distrito.trim().equals("-1")) {
			log.info("Dentro de carga distrito destino");
			distritoBean ubigeoBean2 = new distritoBean();
			ubigeoBean2.setIdtb_zona(Integer.parseInt(zona));
			ubigeoBean2.setIdtb_distrito(Integer.parseInt(distrito));
			lstmoderadores = service.consultaXUbigeoXModeradornuevas(ubigeoBean2);
		}

		return SUCCESS;
	}

}
