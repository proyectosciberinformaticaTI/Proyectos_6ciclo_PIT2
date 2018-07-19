package com.proyecto.action;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.proyecto.bean.agraviadosBean;
import com.proyecto.bean.asignaFotos;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.tipoagravioBean;
import com.proyecto.bean.zonaBean;
import com.proyecto.service.AgraviadosServicelmpl;
import com.proyecto.service.IncidenciasServicelmpl;
import com.proyecto.util.Constantes;







@SuppressWarnings("serial")//Eliminar todas advertencias en los metodos,parametros, o en sus casteos.
@ParentPackage(value = "dawi")//Para identificar que todo el proyecto este todo en mismo cotexto o paquete, de trabajo.
public class AgraviadosAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private static final Log log = LogFactory.getLog(AgraviadosAction.class);
	protected HttpServletRequest servletRequest;
	protected HttpServletResponse servletResponse;
	private static final long serialVersionUID = 1L;
	private Map<String, Object> session =(Map<String, Object>)ActionContext.getContext().getSession();
	private String loginuser;
	private String loginpassword;
	private String mensaje;
	private String answer;
	private String nombreusuario;
	private String nonpassword;
	private String confirmacontraseña;
	private String correo;
	private String direccion;
	private String telefono;
	private String dni;
	private String sexo;
	private String fechanacimiento;
	private String mensaje6;
	private String nom_apellido;
	private String valid;
	private File fotosAgraviados;
	private List<asignaFotos> grdFotos;
	private File fotos;
	private String incidencias;
	private IncidenciasServicelmpl servicesss = new IncidenciasServicelmpl();
	
	
	
	
	
	
	
	
	
	
	
	

	public IncidenciasServicelmpl getServicesss() {
		return servicesss;
	}

	public void setServicesss(IncidenciasServicelmpl servicesss) {
		this.servicesss = servicesss;
	}

	public File getFotos() {
		return fotos;
	}

	public void setFotos(File fotos) {
		this.fotos = fotos;
	}

	public String getIncidencias() {
		return incidencias;
	}

	public void setIncidencias(String incidencias) {
		this.incidencias = incidencias;
	}

	public List<asignaFotos> getGrdFotos() {
		return grdFotos;
	}

	public void setGrdFotos(List<asignaFotos> grdFotos) {
		this.grdFotos = grdFotos;
	}

	public File getFotosAgraviados() {
		return fotosAgraviados;
	}

	public void setFotosAgraviados(File fotosAgraviados) {
		this.fotosAgraviados = fotosAgraviados;
	}

	public String getValid() {
		return valid;
	}

	public void setValid(String valid) {
		this.valid = valid;
	}

	public String getNom_apellido() {
		return nom_apellido;
	}

	public void setNom_apellido(String nom_apellido) {
		this.nom_apellido = nom_apellido;
	}

	public String getMensaje6() {
		return mensaje6;
	}

	public void setMensaje6(String mensaje6) {
		this.mensaje6 = mensaje6;
	}

	public String getFechanacimiento() {
		return fechanacimiento;
	}

	public void setFechanacimiento(String fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}

	public String getNombreusuario() {
		return nombreusuario;
	}

	public void setNombreusuario(String nombreusuario) {
		this.nombreusuario = nombreusuario;
	}

	

	public String getNonpassword() {
		return nonpassword;
	}

	public void setNonpassword(String nonpassword) {
		this.nonpassword = nonpassword;
	}

	public String getConfirmacontraseña() {
		return confirmacontraseña;
	}

	public void setConfirmacontraseña(String confirmacontraseña) {
		this.confirmacontraseña = confirmacontraseña;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
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

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
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
	
	
	
	

	

//Nombra  a la accion de la autenticacion del agraviado, donde recibe los parametros ingresados en el campo
	//de la vista del login, y verifica que si usuario existe o no
	@Action(value="/login", results={
			@Result(name="login",location="/index.jsp"),
			@Result(name="success",location="/registrarReporte.jsp"),
	})
	public String login() throws Exception {
	
		AgraviadosServicelmpl service= new AgraviadosServicelmpl();
		log.info("En LoginAction");
        agraviadosBean bean= new agraviadosBean();
		bean.setUsuario(loginuser);
		bean.setContrasena(loginpassword);

		agraviadosBean usu = service.login(bean);

		if (usu == null) {// Usuario no existe
			mensaje = "El usuario no existe";
			return "login";
		} else {// Usuario existe
				// Traemos los permisos
			
			session.put("objUsuario", usu);
			
			return "success";
		}
	}
	
	
	
	
	//Nombra a la acccion donde los usuarios(agraviados) se registran, y revisen los parametros ingresados de los respectivos campos 
	@Action(value="/registroAgraviados",results={@Result(location="/index.jsp",name="success")	})
	public String registrartodosaAgraviados(){
		log.info("En registra Usuario");
		AgraviadosServicelmpl service= new AgraviadosServicelmpl();
		int salida = -1;//(-1)Existe caida
		try {
			
			agraviadosBean incidencias = new agraviadosBean();
			incidencias.setCorreo(correo);
			incidencias.setNom_apellido(nom_apellido);
			incidencias.setDireccion(direccion);
			incidencias.setFecha_nacimiento(fechanacimiento);
	        incidencias.setSexo(sexo);
		    incidencias.setDni(Integer.parseInt(dni));
		    incidencias.setUsuario(nombreusuario);
		    incidencias.setContrasena(nonpassword);
		    incidencias.setTelefono(Integer.parseInt(telefono));
		    incidencias.setFotosBytes(Constantes.getBytesFromFile(fotosAgraviados));
		    salida=	service.insertaAgraviados(incidencias);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(salida>0){
				
			mensaje6="REGISTRO EXITOSO";
			}else{
mensaje6="ERROR AL REGISTRAR";
			}
			
					}
		return SUCCESS;
		
	}
	
	
	
//Nombra a la accion de la validacion en bootstrapp, para que verifique
	@Action(value = "/validaAgraviados", results = { @Result(name = "success", type="json") })
	public String validadniAgraviados()  {
		log.info("En registra Usuario");
		AgraviadosServicelmpl service = new AgraviadosServicelmpl();
		
		try {
			
			if (!dni.matches("[0-9]{8}")) {
				valid = "true";
				//Si es correcto, no envia el mensaje, solo queda el mensaje de 8 digitos
			}else  {
				
				agraviadosBean incidencias = new agraviadosBean();
				incidencias.setDni(Integer.parseInt(dni));
				
				
			agraviadosBean ko = service.buscavalidaporAgraviadosDNI(incidencias);
				if (ko != null) {
					valid = "false";
					//Como existe el moderador, se le envia falso, SI aparecera el mensaje
				}else{
					//Como no existe el moderador, se le envia true, NO aparecera el mensaje
					valid = "true";
				}
				//out.print("{\"valid\" : " + noExiste + " }");
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;

	}
	
	
	
	
	
	@SuppressWarnings("unchecked")
	@Action(value = "/agregarSeleccionAnonimo", results = { @Result(name = "success", location = "/agregarFotosAnonimo.jsp") })
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

	private String mensajedeFotos;
	
	
	
	
	
	
	public String getMensajedeFotos() {
		return mensajedeFotos;
	}

	public void setMensajedeFotos(String mensajedeFotos) {
		this.mensajedeFotos = mensajedeFotos;
	}

	@SuppressWarnings("unchecked")
	@Action(value = "/registraVariasFotosAnonimo", results = { @Result(location = "/registroAnonimo.jsp", name = "success") })
	public String registraBoleta() throws Exception {
		log.info("En registraBoleta");

		
		int salida = -1;
		grdFotos = (ArrayList<asignaFotos>) session.get("dataDeGrilla");

		for (asignaFotos x : grdFotos) {

		salida=	servicesss.insertafotosIncidencias(x);
		if(salida>0){
			mensajedeFotos = "REGISTRO EXITOSO";
			session.put("mensajedeFotosAnonimo", mensajedeFotos);
			
		}else{
			mensajedeFotos = "Error en el registro";
		}
		
		
		}

		grdFotos.clear();
		session.put("dataDeGrilla", grdFotos);

		return SUCCESS;
	}



	
	






























	
	
	
	
	
	
	
////////////////////////////// WEB SERVICE///////////////////////////////////////////////////////

	
	
	
	@Action(value="/registroAgraviadoswebservice",  results = { @Result(name = "success", type = "json") })
	public String registrartodosaAgraviadoswebservice() throws ServletException{
		log.info("En registra Usuario");
		AgraviadosServicelmpl service= new AgraviadosServicelmpl();
		int salida = -1;//(-1)Existe caida
		try {
			
			agraviadosBean incidencias = new agraviadosBean();
		
		    incidencias.setUsuario(nombreusuario);
		    incidencias.setContrasena(nonpassword);
		    
		   salida=	service.insertaAgraviadoswebservice(incidencias);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(salida>0){
				
			mensaje6="REGISTRO EXITOSO";
			}else{
mensaje6="ERROR AL REGISTRAR";
			}
			
					}
		return SUCCESS;
		
	}
	
	
	
	
	
	
	
	
	
	
	

	@Action(value="/loginwebservice", results={
			@Result(name="login",type="json"),
			@Result(name="success",type="json"),
	})
	public String loginwebservice() throws Exception {
	
		AgraviadosServicelmpl service= new AgraviadosServicelmpl();
		log.info("En LoginAction");
        agraviadosBean bean= new agraviadosBean();
		bean.setUsuario(loginuser);
		bean.setContrasena(loginpassword);

		agraviadosBean usu = service.login(bean);

		if (usu == null) {// Usuario no existe
			mensaje = "El usuario no existe";
			return "login";
		} else {// Usuario existe
				// Traemos los permisos
			
			session.put("objUsuario", usu);
			
			return "success";
		}
	}
	
	
	
	
	
	
	
	
	














}
