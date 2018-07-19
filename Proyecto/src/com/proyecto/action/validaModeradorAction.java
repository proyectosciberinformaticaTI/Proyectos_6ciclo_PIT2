package com.proyecto.action;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.proyecto.bean.moderadorBean;
import com.proyecto.service.AgraviadosServicelmpl;
import com.proyecto.service.ModeradroServiceImpl;
//Para identificar que todo el proyecto este todo en mismo cotexto o paquete, de trabajo.
@ParentPackage(value = "dawi")
public class validaModeradorAction extends ActionSupport {
	private static final Log log = LogFactory.getLog(validaModeradorAction.class);

	private static final long serialVersionUID = 1L;

	private String dni;
	private String valid;
	private String nombreusuario;

	public String getNombreusuario() {
		return nombreusuario;
	}

	public void setNombreusuario(String nombreusuario) {
		this.nombreusuario = nombreusuario;
	}

	
	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getValid() {
		return valid;
	}

	public void setValid(String valid) {
		this.valid = valid;
	}

	@Action(value = "/ppp", results = { @Result(name = "success", type = "json") })
	public String validadni() {
		log.info("En registra Usuario");
		ModeradroServiceImpl service = new ModeradroServiceImpl();

		try {

			if (!dni.matches("[0-9]{8}")) {
				valid = "true";
				// Si es correcto, no envia el mensaje, solo queda el mensaje de
				// 8 digitos
			} else {

				moderadorBean incidencias = new moderadorBean();
				incidencias.setDni(Integer.parseInt(dni));

				moderadorBean ko = service.buscavalida(incidencias);
				if (ko != null) {
					valid = "false";
					// Como existe el moderador, se le envia falso, SI aparecera
					// el mensaje
				} else {
					// Como no existe el moderador, se le envia true, NO
					// aparecera el mensaje
					valid = "true";
				}
				// out.print("{\"valid\" : " + noExiste + " }");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;

	}
//
//	@Action(value = "/validaAgraviadosUsuario", results = { @Result(name = "success", type = "json") })
//	public String validaUsuariosAgraviados() {
//		log.info("En registra Usuario");
//		AgraviadosServicelmpl service = new AgraviadosServicelmpl();
//
//		try {
//
//			if (!nombreusuario.matches("[A-Za-z]")) {
//				valid = "true";
//				// Si es correcto, no envia el mensaje, solo queda el mensaje de
//				// 8 digitos
//			} else {
//
//				agraviadosBean incidencias = new agraviadosBean();
//				incidencias.setUsuario(nombreusuario);
//
//				agraviadosBean ko = service.buscavalidaporAgraviadosUsuario(incidencias);
//				if (ko != null) {
//					valid = "false";
//					// Como existe el moderador, se le envia falso, SI aparecera
//					// el mensaje
//				} else {
//					// Como no existe el moderador, se le envia true, NO
//					// aparecera el mensaje
//					valid = "true";
//				}
//				// out.print("{\"valid\" : " + noExiste + " }");
//
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return SUCCESS;
//
//	}
//
//
//

}
