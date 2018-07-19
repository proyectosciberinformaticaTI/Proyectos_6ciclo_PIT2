package com.proyecto.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
//Para identificar que todo el proyecto este todo en mismo cotexto o paquete, de trabajo.
@ParentPackage(value = "dawi")
public class LogoutActionAdministrador extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@SuppressWarnings("rawtypes")
	private SessionMap session = (SessionMap) ActionContext.getContext().getSession();
	private HttpServletResponse response = ServletActionContext.getResponse();
	private String mensaje;

	//Nombra a la acccion, de cerrar sesion y salir	del area del sistema del administrador al menu Principal de todo el sistema.
	@Action(value = "/logoutAdministrador", results = { @Result(name = "success", location = "/menuPrincipal.jsp") })
	public String logout() throws Exception {
		session.invalidate();
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		mensaje = "El usuario salió del sesión";
		return SUCCESS;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

}
