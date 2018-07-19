package com.proyecto.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import java.util.Map;

//
//import java.io.ByteArrayInputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.proyecto.bean.agraviadosBean;
import com.proyecto.bean.asignaFotos;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.moderadorBean;
import com.proyecto.bean.tipoagravioBean;
import com.proyecto.bean.zonaBean;
import com.proyecto.service.IncidenciasServicelmpl;
import com.proyecto.service.ModeradroServiceImpl;
import com.proyecto.util.Constantes;

@SuppressWarnings("serial")
//Indica que todo el proyecto trabaja en un mismo contexto de trabajo o paquete de trabajo con un mismo nombre
@ParentPackage(value = "dawi")
public class IncidenciasAction extends ActionSupport implements ServletRequestAware, ServletResponseAware {
	private static final Log log = LogFactory.getLog(IncidenciasAction.class);

	protected HttpServletRequest servletRequest;

	protected HttpServletResponse servletResponse;

	private String agresor;
	private String idtb_zona;
	private String idtb_tipo_agravio;
	private String idtb_distrito;
	private File fotos;
	private List<tipoagravioBean> listatipo;
	private List<distritoBean> listadistrito;
	private List<zonaBean> listaZona;
	private String descripcion;
	private String idagraviado;
	private List<asignaFotos> grdFotos;
	private String mensaje6;
	private Map<String, Object> session = (Map<String, Object>) ActionContext.getContext().getSession();
	private IncidenciasServicelmpl servicesss = new IncidenciasServicelmpl();
	private List<asignaFotos> ltstodosasginafotos;
	private InputStream imagendeEvidencias;
	private InputStream imagenFotos;
	private String idtb_incidencias;
	
	private String MENSAJEANONIMO;
	private String zona;

	private String distrito;
	
	public String getZona() {
		return zona;
	}

	public void setZona(String zona) {
		this.zona = zona;
	}

	public String getDistrito() {
		return distrito;
	}

	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}
	
	
	
	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getMensaje6() {
		return mensaje6;
	}

	public void setMensaje6(String mensaje6) {
		this.mensaje6 = mensaje6;
	}

	public String getIdagraviado() {
		return idagraviado;
	}

	public void setIdagraviado(String idagraviado) {
		this.idagraviado = idagraviado;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public List<distritoBean> getListadistrito() {
		return listadistrito;
	}

	public void setListadistrito(List<distritoBean> listadistrito) {
		this.listadistrito = listadistrito;
	}

	public List<zonaBean> getListaZona() {
		return listaZona;
	}

	public void setListaZona(List<zonaBean> listaZona) {
		this.listaZona = listaZona;
	}

	public List<tipoagravioBean> getListatipo() {
		return listatipo;
	}

	public void setListatipo(List<tipoagravioBean> listatipo) {
		this.listatipo = listatipo;
	}

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

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public void setServletResponse(HttpServletResponse servletResponse) {
		this.servletResponse = servletResponse;
	}

	public static Log getLog() {
		return log;
	}

	public List<asignaFotos> getGrdFotos() {
		return grdFotos;
	}

	public void setGrdFotos(List<asignaFotos> grdFotos) {
		this.grdFotos = grdFotos;
	}

	private String incidencias;

	public String getIncidencias() {
		return incidencias;
	}

	public void setIncidencias(String incidencias) {
		this.incidencias = incidencias;
	}

	private String mensaje99999999;

	public String getMensaje99999999() {
		return mensaje99999999;
	}

	public void setMensaje99999999(String mensaje99999999) {
		this.mensaje99999999 = mensaje99999999;
	}

	public InputStream getImagenFotos() {
		return imagenFotos;
	}

	public void setImagenFotos(InputStream imagenFotos) {
		this.imagenFotos = imagenFotos;
	}

	private int idCodigo;

	public int getIdCodigo() {
		return idCodigo;
	}

	public void setIdCodigo(int idCodigo) {
		this.idCodigo = idCodigo;
	}

	public IncidenciasServicelmpl getServicesss() {
		return servicesss;
	}

	public void setServicesss(IncidenciasServicelmpl servicesss) {
		this.servicesss = servicesss;
	}

	private String mensajedeFotos;

	public String getMensajedeFotos() {
		return mensajedeFotos;
	}

	public void setMensajedeFotos(String mensajedeFotos) {
		this.mensajedeFotos = mensajedeFotos;
	}

	public InputStream getImagendeEvidencias() {
		return imagendeEvidencias;
	}

	public void setImagendeEvidencias(InputStream imagendeEvidencias) {
		this.imagendeEvidencias = imagendeEvidencias;
	}

	public List<asignaFotos> getLtstodosasginafotos() {
		return ltstodosasginafotos;
	}

	public void setLtstodosasginafotos(List<asignaFotos> ltstodosasginafotos) {
		this.ltstodosasginafotos = ltstodosasginafotos;
	}

	public String getIdtb_incidencias() {
		return idtb_incidencias;
	}

	public void setIdtb_incidencias(String idtb_incidencias) {
		this.idtb_incidencias = idtb_incidencias;
	}

//	@Action(value = "/consultaporlasFotosdelaGaleria", results = {
//			@Result(name = "success", location = "/galeriaEvidencias.jsp") })
//	public String listarporTipoAgravio() throws Exception {
//		log.info("En listar Modalidad");
//
//		try {
//
//			IncidenciasServicelmpl service = new IncidenciasServicelmpl();
//			asignaFotos bean = new asignaFotos();
//
//			incidenciasBean inc = new incidenciasBean();
//			inc.setIdtb_incidencias(Integer.parseInt(idtb_incidencias));
//			bean.setIncidencia(inc);
//
//			ltstodosasginafotos = service.consultaXportodosFotosEvidencias(bean);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return SUCCESS;
//	}

	

	
	//Nombra ala accion, para registrar la incidencia sin que el usuario del agraviado este autenticado.
	@Action(value = "/registroAnonimo", results = { @Result(location = "/agregarFotosAnonimo.jsp", name = "success") })
	public String registra() {
		log.info("En registra Usuario");
		IncidenciasServicelmpl service = new IncidenciasServicelmpl();

		int salida = -1;// (-1)Existe caida
		try {

			incidenciasBean incidencias = new incidenciasBean();
			incidencias.setAgresor(agresor);
			incidencias.setDescripcion(descripcion);

			zonaBean zona = new zonaBean();
			zona.setIdtb_zona(Integer.parseInt(this.zona));
			incidencias.setZona(zona);
			distritoBean distrito = new distritoBean();
			distrito.setIdtb_distrito(Integer.parseInt(this.distrito));
			incidencias.setDistrito(distrito);
			tipoagravioBean tipo = new tipoagravioBean();
			tipo.setIdtb_tipo_agravio(Integer.parseInt(idtb_tipo_agravio));
			incidencias.setTipo(tipo);
			salida = service.insertaIncidencias(incidencias);
			String codigo = String.valueOf(incidencias.getIdtb_incidencias());
			session.put("codigoAnonimo", codigo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (salida > 0) {
				MENSAJEANONIMO= "Registro exitoso";
			session.put("MENSAJEANONIMO",MENSAJEANONIMO);
			} else {
				MENSAJEANONIMO="Error al registrar";
			}

					}
		return SUCCESS;

	}

	@Action(value = "/registroIncidenciasagraviados", results = {
			@Result(location = "/agregarFotos.jsp", name = "success") })
	public String registrarReporte() throws ServletException, IOException {
		log.info("En registra Usuario");
		IncidenciasServicelmpl service = new IncidenciasServicelmpl();
		int salida = -1;// (-1)Existe caida
		try {

			incidenciasBean incidencias = new incidenciasBean();
			incidencias.setAgresor(agresor);

			incidencias.setDescripcion(descripcion);
			agraviadosBean agra = new agraviadosBean();
			agra.setIdagraviado(Integer.parseInt(idagraviado));
			incidencias.setAgraviados(agra);
			zonaBean zona = new zonaBean();
			zona.setIdtb_zona(Integer.parseInt(this.zona));
			incidencias.setZona(zona);
			distritoBean distrito = new distritoBean();
			distrito.setIdtb_distrito(Integer.parseInt(this.distrito));
			incidencias.setDistrito(distrito);
			tipoagravioBean tipo = new tipoagravioBean();
			tipo.setIdtb_tipo_agravio(Integer.parseInt(idtb_tipo_agravio));
			incidencias.setTipo(tipo);
			salida = service.insertaIncidencia(incidencias);

			String codigo = String.valueOf(incidencias.getIdtb_incidencias());
			session.put("codigo", codigo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (salida > 0) {

				mensaje6 = "REGISTRO EXITOSO";
				session.put("mensaje6", mensaje6);

			} else {
				mensaje6 = "ERROR AL REGISTRAR";

				session.put("mensaje6", mensaje6);
			}

		}
		return SUCCESS;

	}
//Nombra a la accion para cargar los datos de el tipo de agravio al combobox
	@Action(value = "/cargatipoagravio", results = { @Result(name = "success", type = "json") })
	public String consultartipoagravio() {
		log.info("En carga tipo de usuario");
		try {
			IncidenciasServicelmpl service = new IncidenciasServicelmpl();
			listatipo = service.listatiposagravios();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;

	}
	
	
	
	
//Nombre a la accion para cargar los datos del distrito al combobox
	@Action(value = "/cargadistrito", results = { @Result(name = "success", type = "json") })
	public String consultarDistrito() {
		log.info("En carga tipo de usuario");
		try {
			IncidenciasServicelmpl service = new IncidenciasServicelmpl();
			listadistrito = service.listadistrito();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;

	}

	
	//Nombra a la accion para cargar los datos de la zona al combobox
	@Action(value = "/cargazona", results = { @Result(name = "success", type = "json") })
	public String consultarZona() {
		log.info("En carga tipo de usuario");
		try {
			IncidenciasServicelmpl service = new IncidenciasServicelmpl();
			listaZona = service.listazona();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;

	}

	@Action(value = "/verImagenFotosdelasEvidencias", results = {
			@Result(params = { "inputName", "imagendeEvidencias" }, name = "success", type = "stream") })
	public String verImagendeEvidenciasdeporFotos() throws Exception {

		try {
			IncidenciasServicelmpl service = new IncidenciasServicelmpl();
			asignaFotos bean = service.obtienePorPKasignaFotos(idCodigo);
			imagendeEvidencias = new ByteArrayInputStream(bean.getFotosBytes());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	//Nombra a la accion, para poder visualizar la imagen de la foto que se va agregar a la tabla
	//del area del sistema del agraviado
	@Action(value = "/verFotosasignados", results = {
			@Result(params = { "inputName", "imagenFotos" }, name = "success", type = "stream") })
	public String verFotosmoderador() throws Exception {

		grdFotos = (ArrayList<asignaFotos>) session.get("dataDeGrilla");

		for (asignaFotos x : grdFotos) {

			// Condición trivial: siempre cierta
			if (x.getId_tbasigna_foto() == idCodigo) {

				imagenFotos = new ByteArrayInputStream(x.getFotosBytes());

				break;

			}

		}

		return SUCCESS;
	}

	//Nombra a la acción, para agregar las fotos seleccionadas, a la tabla pero no que este registro a la bd
	@SuppressWarnings("unchecked")
	@Action(value = "/agregarSeleccion", results = { @Result(name = "success", location = "/agregarFotos.jsp") })
	public String agregarSeleccion() throws IOException {
		log.info("En el método :  agregarSeleccion");

		int c = 0;

		if (session.get("dataDeGrilla") == null) {
			grdFotos = new ArrayList<asignaFotos>();
			c = 1;
			session.put("ID", c);
		}

		else {

			grdFotos = (ArrayList<asignaFotos>) session.get("dataDeGrilla");
			c = (Integer) session.get("ID");
			c++;
			session.put("ID", c);

		}

		asignaFotos p = new asignaFotos();
		p.setId_tbasigna_foto(c);
		p.setFotosBytes(Constantes.getBytesFromFile(fotos));
		incidenciasBean in = new incidenciasBean();
		in.setIdtb_incidencias(Integer.parseInt(incidencias));
		p.setIncidencia(in);

		grdFotos.add(p);
		session.put("dataDeGrilla", grdFotos);

		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	//Nombra a la accion, de las fotos agregadas en la tabla despues de agregar todas fotos que el usuario desea.
	@Action(value = "/registraVariasFotos", results = { @Result(location = "/registrarReporte.jsp", name = "success") })
	public String registraBoleta() throws Exception {
		log.info("En registraBoleta");

		
		int salida = -1;
		grdFotos = (ArrayList<asignaFotos>) session.get("dataDeGrilla");

		for (asignaFotos x : grdFotos) {

		salida=	servicesss.insertafotosIncidencias(x);
		if(salida>0){
			mensajedeFotos = "REGISTRO EXITOSO";
			session.put("mensajedeFotos", mensajedeFotos);
			
		}else{
			mensajedeFotos = "Error en el registro";
		}
		
		
		}

		grdFotos.clear();
		session.put("dataDeGrilla", grdFotos);

		return SUCCESS;
	}








/////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	

	
	
	
	
	
	



































}
