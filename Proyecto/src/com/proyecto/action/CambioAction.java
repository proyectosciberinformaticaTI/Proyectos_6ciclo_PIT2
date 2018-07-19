package com.proyecto.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.proyecto.bean.agraviadosBean;
import com.proyecto.service.AgraviadosService;
import com.proyecto.service.AgraviadosServicelmpl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Eliminar todas advertencias en los metodos,parametros, o en sus casteos.
@SuppressWarnings("serial")
//Para identificar que todo el proyecto este todo en mismo cotexto o paquete, de trabajo.
@ParentPackage(value = "dawi")
public class CambioAction extends ActionSupport implements ServletRequestAware, ServletResponseAware {

	private static final Log log = LogFactory.getLog(CambioAction.class);
	private AgraviadosService service = new AgraviadosServicelmpl();
	private String pass, pass1, pass2;
	private Map<String, Object> session = ActionContext.getContext().getSession();
	protected HttpServletRequest servletRequest;
	protected HttpServletResponse servletResponse;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
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

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPass1() {
		return pass1;
	}

	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}

	public String getPass2() {
		return pass2;
	}

	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}

	//Nombra a la acción de cambio o actualizacion de contraseña que el usuario del agraviado realiza
	//por motivos de seguridad
	@Action(value = "/cambiarContrasena", results = { @Result(name = "success", location = "/confirmar.jsp") })
	public String cambiarContrasena() throws Exception {
		log.info("En registraOperario");

		int salida = -1;// (-1)Existe caida

		agraviadosBean bean = (agraviadosBean) session.get("objUsuario");
		try {

			bean.setNuevacontrasena(pass2);

			salida = service.cambioContrasena(bean);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (salida > 0) {
				servletRequest.setAttribute("MENSAJE3", "Cambio exitoso");
			} else {
				servletRequest.setAttribute("MENSAJE3", "Error al cambio");
			}

			servletRequest.getRequestDispatcher("/confirmar.jsp").forward(servletRequest, servletResponse);

		}

		return SUCCESS;
	}

}
