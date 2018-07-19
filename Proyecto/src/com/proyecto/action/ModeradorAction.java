package com.proyecto.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.proyecto.bean.agraviadosBean;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.moderadorBean;
import com.proyecto.bean.tipoagravioBean;
import com.proyecto.bean.zonaBean;
import com.proyecto.dao.MySqlModeradorDAO;
import com.proyecto.service.AgraviadosServicelmpl;
import com.proyecto.service.IncidenciasServicelmpl;
import com.proyecto.service.ModeradorService;
import com.proyecto.service.ModeradroServiceImpl;
import com.proyecto.util.Constantes;

//Eliminar todas advertencias en los metodos,parametros, o en sus casteos.
@SuppressWarnings("serial")
// Para identificar que todo el proyecto este todo en mismo cotexto o paquete,
// de trabajo.
@ParentPackage(value = "dawi")
public class ModeradorAction extends ActionSupport implements ServletRequestAware, ServletResponseAware {

	private static final Log log = LogFactory.getLog(ModeradorAction.class);
	protected HttpServletRequest servletRequest;
	protected HttpServletResponse servletResponse;
	private static final long serialVersionUID = 1L;
	private Map<String, Object> session = (Map<String, Object>) ActionContext.getContext().getSession();
	private String loginuser;
	private String loginpassword;
	private String mensaje7;
	private String answer;
	private List<incidenciasBean> lstIncidencias = new ArrayList<incidenciasBean>();
	private filtroIncidenciasBean pa = new filtroIncidenciasBean();
	private int idCodigo;
	String rutaTotal = null;
	private InputStream imagenQR;
	String rutaImagen = null;
	private List<filtroIncidenciasBean> lstIncidencias1;
	private String filtro;
	private List<incidenciasBean> lstincidencias9 = new ArrayList<incidenciasBean>();
	private String fzona;
	private String fdistrito;
	private List<moderadorBean> lstmoderador;
	private filtroIncidenciasBean dis = new filtroIncidenciasBean();
	private String idtb_incidencias;
	private String idtb_moderador;
	private String mensaje1106;
	private String moderador;
	private List<incidenciasBean> lstincidencias;
	private String idtb_distrito;
	private String idtb_zona;
	private String idtb_tipo_agravio;
	private String idmoderador;
	private String dni;
	private String correo;
	private String celular;
	private String telefono;
	private String fecharegistro;
	private List<incidenciasBean> lstincidencias22;
	private incidenciasBean inci = new incidenciasBean();

	public List<incidenciasBean> getLstincidencias9() {
		return lstincidencias9;
	}

	public void setLstincidencias9(List<incidenciasBean> lstincidencias9) {
		this.lstincidencias9 = lstincidencias9;
	}

	public String getIdmoderador() {
		return idmoderador;
	}

	public void setIdmoderador(String idmoderador) {
		this.idmoderador = idmoderador;
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

	public String getIdtb_zona() {
		return idtb_zona;
	}

	public void setIdtb_zona(String idtb_zona) {
		this.idtb_zona = idtb_zona;
	}

	public List<incidenciasBean> getLstincidencias() {
		return lstincidencias;
	}

	public void setLstincidencias(List<incidenciasBean> lstincidencias) {
		this.lstincidencias = lstincidencias;
	}

	public String getMensaje1106() {
		return mensaje1106;
	}

	public void setMensaje1106(String mensaje1106) {
		this.mensaje1106 = mensaje1106;
	}

	public String getIdtb_incidencias() {
		return idtb_incidencias;
	}

	public void setIdtb_incidencias(String idtb_incidencias) {
		this.idtb_incidencias = idtb_incidencias;
	}

	public String getIdtb_moderador() {
		return idtb_moderador;
	}

	public void setIdtb_moderador(String idtb_moderador) {
		this.idtb_moderador = idtb_moderador;
	}

	public filtroIncidenciasBean getDis() {
		return dis;
	}

	public void setDis(filtroIncidenciasBean dis) {
		this.dis = dis;
	}

	public filtroIncidenciasBean getPa() {
		return pa;
	}

	public void setPa(filtroIncidenciasBean pa) {
		this.pa = pa;
	}

	public List<moderadorBean> getLstmoderador() {
		return lstmoderador;
	}

	public void setLstmoderador(List<moderadorBean> lstmoderador) {
		this.lstmoderador = lstmoderador;
	}

	public String getFiltro() {
		return filtro;
	}

	public void setFiltro(String filtro) {
		this.filtro = filtro;
	}

	public List<filtroIncidenciasBean> getLstIncidencias1() {
		return lstIncidencias1;
	}

	public void setLstIncidencias1(List<filtroIncidenciasBean> lstIncidencias1) {
		this.lstIncidencias1 = lstIncidencias1;
	}

	public String getFzona() {
		return fzona;
	}

	public void setFzona(String fzona) {
		this.fzona = fzona;
	}

	public String getFdistrito() {
		return fdistrito;
	}

	public void setFdistrito(String fdistrito) {
		this.fdistrito = fdistrito;
	}

	public String getRutaTotal() {
		return rutaTotal;
	}

	public void setRutaTotal(String rutaTotal) {
		this.rutaTotal = rutaTotal;
	}

	public InputStream getImagenQR() {
		return imagenQR;
	}

	public void setImagenQR(InputStream imagenQR) {
		this.imagenQR = imagenQR;
	}

	public String getRutaImagen() {
		return rutaImagen;
	}

	public void setRutaImagen(String rutaImagen) {
		this.rutaImagen = rutaImagen;
	}

	public int getIdCodigo() {
		return idCodigo;
	}

	public void setIdCodigo(int idCodigo) {
		this.idCodigo = idCodigo;
	}

	public List<incidenciasBean> getLstIncidencias() {
		return lstIncidencias;
	}

	public void setLstIncidencias(List<incidenciasBean> lstIncidencias) {
		this.lstIncidencias = lstIncidencias;
	}

	public String getFecharegistro() {
		return fecharegistro;
	}

	public void setFecharegistro(String fecharegistro) {
		this.fecharegistro = fecharegistro;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	private String usuario;

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public List<incidenciasBean> getLstincidencias22() {
		return lstincidencias22;
	}

	public void setLstincidencias22(List<incidenciasBean> lstincidencias22) {
		this.lstincidencias22 = lstincidencias22;
	}

	public String getModerador() {
		return moderador;
	}

	public void setModerador(String moderador) {
		this.moderador = moderador;
	}

	public String getLoginuser() {
		return loginuser;
	}

	public void setLoginuser(String loginuser) {
		this.loginuser = loginuser;
	}

	public String getLoginpassword() {
		return loginpassword;
	}

	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}

	public String getMensaje7() {
		return mensaje7;
	}

	public void setMensaje7(String mensaje7) {
		this.mensaje7 = mensaje7;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public static Log getLog() {
		return log;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public void setServletResponse(HttpServletResponse servletResponse) {
		this.servletResponse = servletResponse;
	}

	@SuppressWarnings("unchecked")
	@Action(value = "/verDatos",

			results = {

					@Result(name = "success", location = "/registrarReporteModerador.jsp"), })

	public String verdatos() throws Exception {

		try {

			incidenciasBean be = new incidenciasBean();
			IncidenciasServicelmpl service = new IncidenciasServicelmpl();

			be = service.obtienePorID(idCodigo);

			servletRequest.setAttribute("incidencias", be);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	@Action(value = "/verRespuestadistrito", results = { @Result(name = "success", type = "json") })

	public String verRespuestaDistrito() throws Exception {

		try {

			ModeradroServiceImpl service = new ModeradroServiceImpl();

			pa = service.obtienePorIDDistrito(idCodigo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	
	
	
	//Nombra ala acción, que realiza el moderador para asignar a otro moderador cerca de la incidencia
	//realizada por el agraviado.
	@Action(value = "/actualizarAsignaModerador", results = {
			@Result(location = "/listadoReportes.jsp", name = "success") })
	public String actualizarrmoderadores() throws ServletException, IOException {
		log.info("En registra Usuario");
		ModeradroServiceImpl service = new ModeradroServiceImpl();
		IncidenciasServicelmpl service1 = new IncidenciasServicelmpl();
		int salida = -1;// (-1)Existe caida
		try {

			incidenciasBean incidencias = new incidenciasBean();
			incidencias.setIdtb_incidencias(Integer.parseInt(idtb_incidencias));
			moderadorBean mo = new moderadorBean();
			mo.setIdmoderador(Integer.parseInt(moderador));
			incidencias.setModerador(mo);

			salida = service.actualizaAsignaModerador(incidencias);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (salida > 0) {

				mensaje1106 = "Asigacion exitosa";
				session.put("mensaje1106", mensaje1106);
			} else {
				mensaje1106 = "Error en la asiganción";
			}

		}
		return SUCCESS;

	}

	
	
	
	//Nombra a la accion para, listar los datos de moderador que se selecciona en cada campo de texto
	@Action(value = "/buscamoderadoresIncidencias", results = { @Result(name = "success", type = "json") })
	public String buscaModeradores() {
		log.info("Metodo Busqueda");
		try {
			ModeradroServiceImpl service = new ModeradroServiceImpl();
			List<moderadorBean> lista = service.moderadoreslistatodos();
			for (moderadorBean x : lista) {
				if (x.getIdmoderador() == Integer.parseInt(idmoderador)) {
					moderador = String.valueOf(x.getNom_apellido());
					correo = String.valueOf(x.getCorreo());
					dni = String.valueOf(x.getDni());
					celular = String.valueOf(x.getCelular());
					telefono = String.valueOf(x.getTelefono());
					usuario = String.valueOf(x.getUsuario());

				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	@Action(value = "/verImagen", results = {
			@Result(params = { "inputName", "imagenQR" }, name = "success", type = "stream") })
	public String verQR() throws Exception {

		try {
			IncidenciasServicelmpl service = new IncidenciasServicelmpl();
			incidenciasBean bean = service.obtienePorPK(idCodigo);
			imagenQR = new ByteArrayInputStream(bean.getFotosBytes());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	@Action(value = "/consultaporModeradorrrrrrrrrrr", results = {
			@Result(name = "success", location = "/consultaIncidenciasAtendidas.jsp") })
	public String listarporcadamoderador() throws Exception {
		log.info("En listar Modalidad");

		ModeradroServiceImpl service = new ModeradroServiceImpl();

		try {
			incidenciasBean de = new incidenciasBean();
			moderadorBean in = new moderadorBean();

			in.setIdmoderador(Integer.parseInt(idmoderador));
			de.setModerador(in);

			lstincidencias9 = service.consultaXModerador(de);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}

	@Action(value = "/cargacualquiermoderador", results = { @Result(name = "success", type = "json") })
	public String consultarculquiermoderador() {
		log.info("En carga tipo de usuario");
		try {
			ModeradroServiceImpl service = new ModeradroServiceImpl();
			lstmoderador = service.moderadoreslistatodos();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;

	}
	
	
	//Nombra  a la accion de la autenticacion del moderador, donde recibe los parametros ingresados en el campo
		//de la vista del login, y verifica que si usuario existe o no
	@Action(value = "/login1", results = { @Result(name = "login", location = "/loginModerador.jsp"),
			@Result(name = "success", location = "/menuModerador.jsp"), })
	public String login() throws Exception {

		ModeradroServiceImpl service = new ModeradroServiceImpl();
		log.info("En LoginAction");
		moderadorBean bean = new moderadorBean();
		bean.setUsuario(loginuser);
		bean.setContrasena(loginpassword);

		moderadorBean usu = service.loginModerador(bean);

		if (usu == null) {// Usuario no existe
			mensaje7 = "El usuario no existe";
			return "login";
		} else {// Usuario existe
				// Traemos los permisos

			session.put("objUsu", usu);

			return "success";
		}
	}

	
	//Nombra a la accion, para listar zona y por distrito al mismo tiempo, en la tabla
	@Action(value = "/consultaIncidencias", results = { @Result(name = "success", location = "/listadoReportes.jsp") })
	public String listar() throws Exception {
		log.info("En listar Modalidad");

		IncidenciasServicelmpl service1 = new IncidenciasServicelmpl();
		try {
			incidenciasBean filtro = new incidenciasBean();

			zonaBean zo = new zonaBean();
			distritoBean ti = new distritoBean();

			zo.setIdtb_zona(Integer.parseInt(fzona));
			filtro.setZona(zo);
			ti.setIdtb_distrito(Integer.parseInt(fdistrito));
			filtro.setDistrito(ti);

			lstincidencias9 = service1.consultaXdistritoXzona(filtro);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	
//Nombra a la accion para consultar, y listar por tipo de agravio y moderador
	@Action(value = "/consultaporTIpoagraviooo", results = {
			@Result(name = "success", location = "/consultaIncidencias.jsp") })
	public String listarporTipoAgravio() throws Exception {
		log.info("En listar Modalidad");

		ModeradroServiceImpl service = new ModeradroServiceImpl();

		try {
			incidenciasBean in = new incidenciasBean();

			tipoagravioBean ti = new tipoagravioBean();
			ti.setIdtb_tipo_agravio(Integer.parseInt(idtb_tipo_agravio));
			moderadorBean mo = new moderadorBean();
			mo.setIdmoderador(Integer.parseInt(idmoderador));

			in.setTipo(ti);
			in.setModerador(mo);
			lstIncidencias = service.consultaXtipoXagravio(in);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}

}
