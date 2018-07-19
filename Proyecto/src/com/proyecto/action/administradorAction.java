package com.proyecto.action;

import java.io.IOException;
import java.io.InputStream;

import java.io.ByteArrayInputStream;
import java.io.File;

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
@ParentPackage(value = "dawi")
public class administradorAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	
	private static final Log log = LogFactory.getLog(administradorAction.class);

	private static final long serialVersionUID = 1L;

	private Map<String, Object> session =(Map<String, Object>)ActionContext.getContext().getSession();

	
	private String louser;
	private String lopassword;
	private String mensaje8;
	
	
	
	
	
	
	
	
	
	
	
	
	private String idmoderador;
	private String nom_apellido;
	private String moderador;
	private String entidad;
	private File fotos;
	private String dni;
	private String correo;
	private String celular;
	private String telefono;
	private String idtb_distrito;
	private String usuario;
	private String contraseña;
	
	
	
	private String mensaje77;
	
	private List<moderadorBean> lstmoderador= new ArrayList<moderadorBean>();
	

	protected HttpServletRequest servletRequest;

	protected HttpServletResponse servletResponse;
	
	private String filtro;
	
	
	
	private int idCodigo;
	
	
	
	private InputStream imagenFotos;
	
	private String mensaje123;
	private String contrasena;
	
	
	
	
	
	
	
	private moderadorBean mo= new moderadorBean();
	
	
	
	
	
	
	private List<moderadorBean> ltsmoderador;
	
	
	
	
	
	
	
	
	
	
	
	
	


	public List<moderadorBean> getLtsmoderador() {
		return ltsmoderador;
	}

	public void setLtsmoderador(List<moderadorBean> ltsmoderador) {
		this.ltsmoderador = ltsmoderador;
	}

	public moderadorBean getMo() {
		return mo;
	}

	public void setMo(moderadorBean mo) {
		this.mo = mo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getMensaje123() {
		return mensaje123;
	}

	public void setMensaje123(String mensaje123) {
		this.mensaje123 = mensaje123;
	}

	public InputStream getImagenFotos() {
		return imagenFotos;
	}

	public void setImagenFotos(InputStream imagenFotos) {
		this.imagenFotos = imagenFotos;
	}

	public int getIdCodigo() {
		return idCodigo;
	}

	public void setIdCodigo(int idCodigo) {
		this.idCodigo = idCodigo;
	}

	public String getFiltro() {
		return filtro;
	}

	public void setFiltro(String filtro) {
		this.filtro = filtro;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public void setServletResponse(HttpServletResponse servletResponse) {
		this.servletResponse = servletResponse;
	}

	public List<moderadorBean> getLstmoderador() {
		return lstmoderador;
	}

	public void setLstmoderador(List<moderadorBean> lstmoderador) {
		this.lstmoderador = lstmoderador;
	}

	@Action(value = "/consultallllllModeradores", results = { @Result(name = "success", location = "/mantenimientoModerador.jsp") })
	public String listartodosmoderadores() throws Exception {
		log.info("En listar Modalidad");
		ModeradroServiceImpl service = new ModeradroServiceImpl();
		try {
		
		

	
		lstmoderador	=service.listaModeradores(filtro);
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}

	public String getMensaje77() {
		return mensaje77;
	}




	public void setMensaje77(String mensaje77) {
		this.mensaje77 = mensaje77;
	}




	public String getIdmoderador() {
		return idmoderador;
	}




	public void setIdmoderador(String idmoderador) {
		this.idmoderador = idmoderador;
	}




	public String getNom_apellido() {
		return nom_apellido;
	}




	public void setNom_apellido(String nom_apellido) {
		this.nom_apellido = nom_apellido;
	}




	public String getModerador() {
		return moderador;
	}




	public void setModerador(String moderador) {
		this.moderador = moderador;
	}




	public String getEntidad() {
		return entidad;
	}




	public void setEntidad(String entidad) {
		this.entidad = entidad;
	}




	public File getFotos() {
		return fotos;
	}




	public void setFotos(File fotos) {
		this.fotos = fotos;
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




	public String getIdtb_distrito() {
		return idtb_distrito;
	}




	public void setIdtb_distrito(String idtb_distrito) {
		this.idtb_distrito = idtb_distrito;
	}




	public String getUsuario() {
		return usuario;
	}




	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}




	public String getContraseña() {
		return contraseña;
	}




	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}




	public String getLouser() {
		return louser;
	}




	public void setLouser(String louser) {
		this.louser = louser;
	}




	public String getLopassword() {
		return lopassword;
	}




	public void setLopassword(String lopassword) {
		this.lopassword = lopassword;
	}




	public Map<String, Object> getSession() {
		return session;
	}




	public void setSession(Map<String, Object> session) {
		this.session = session;
	}










	public String getMensaje8() {
		return mensaje8;
	}




	public void setMensaje8(String mensaje8) {
		this.mensaje8 = mensaje8;
	}




	public static Log getLog() {
		return log;
	}




	public static long getSerialversionuid() {
		return serialVersionUID;
	}




	@Action(value="/loginAdmnistrador", results={
			@Result(name="login",location="/loginAdministrador.jsp"),
			@Result(name="success",location="/menuAdministrador.jsp"),
	})
	public String loginAdministrador() throws Exception {
	
		ModeradroServiceImpl service= new ModeradroServiceImpl();
		log.info("En LoginAction");
        moderadorBean bean= new moderadorBean();
		bean.setUsuario(louser);
		bean.setContrasena(lopassword);

		moderadorBean usu = service.loginAdministrador(bean);

		if (usu == null) {// Usuario no existe
			mensaje8 = "El usuario no existe";
			return "login";
		} else {// Usuario existe
				// Traemos los permisos
			
			session.put("objUa", usu);
			
			return "success";
		}
	}
	
	
	


@Action(value="/registrotodosModeradores",results={@Result(location="/mantenimientoModerador.jsp",name="success")	})
	public String registrarmoderadores() throws ServletException, IOException{
		log.info("En registra Usuario");
	ModeradroServiceImpl service = new ModeradroServiceImpl();
		int salida = -1;//(-1)Existe caida
		try {
			
			moderadorBean incidencias = new moderadorBean();
			incidencias.setUsuario(usuario);
			incidencias.setCelular(Integer.parseInt(celular));
	        incidencias.setCorreo(correo);
	        incidencias.setContrasena(contrasena);
	        incidencias.setNom_apellido(nom_apellido);
	        incidencias.setDni(Integer.parseInt(dni));
	        incidencias.setTelefono(Integer.parseInt(telefono));
            incidencias.setEntidad(entidad);
            incidencias.setFotosBytes(Constantes.getBytesFromFile(fotos));
	     
		distritoBean dis= new distritoBean();
		dis.setIdtb_distrito(Integer.parseInt(idtb_distrito));
		incidencias.setDistrito(dis);		   
		salida=	service.insertaModeradores(incidencias);
		lstmoderador=service.listarTodosmoderadores();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(salida>0){
				
			mensaje77="REGISTRO EXITOSO";
			}else{
         mensaje77="ERROR AL REGISTRAR";
			}
			
			
					}
		return SUCCESS;
		
	}










@Action(value="/actualizartodosModeradores",results={@Result(location="/mantenimientoModerador.jsp",name="success")	})
public String actualizarrmoderadores() throws ServletException, IOException{
	log.info("En registra Usuario");
ModeradroServiceImpl service = new ModeradroServiceImpl();
	int salida = -1;//(-1)Existe caida
	try {
		
		moderadorBean incidencias = new moderadorBean();
		incidencias.setCelular(Integer.parseInt(celular));
        incidencias.setCorreo(correo);
        incidencias.setUsuario(usuario);
        incidencias.setContrasena(contrasena);
        incidencias.setNom_apellido(nom_apellido);
        incidencias.setDni(Integer.parseInt(dni));
        incidencias.setFotosBytes(Constantes.getBytesFromFile(fotos));
        incidencias.setTelefono(Integer.parseInt(telefono));
        incidencias.setEntidad(entidad);
       incidencias.setIdmoderador(Integer.parseInt(idmoderador));
	distritoBean dis= new distritoBean();
	dis.setIdtb_distrito(Integer.parseInt(idtb_distrito));
	incidencias.setDistrito(dis);		   
	salida=	service.actualizaModerador(incidencias);
	lstmoderador=service.listarTodosmoderadores();
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		if(salida>0){
			
		mensaje123="Actualizacion exitoso";
		}else{
     mensaje123="Error en la actualizacion";
		}
		
		
				}
	return SUCCESS;
	
}








@SuppressWarnings("unchecked")
@Action(value = "/verDatosModerador", 

		 results={
				
					@Result(name="success",location="/editarModerador.jsp"),
			})
		
		public String verdatos() throws Exception {
	
	String agresor=null;
			try {
				
				
		ModeradroServiceImpl service= new ModeradroServiceImpl();

	distritoBean di = new distritoBean();
	di.setIdtb_distrito(Integer.parseInt(idtb_distrito));
mo.setDistrito(di);
	mo=	 service.obtienePorIDModerador(idCodigo);
servletRequest.setAttribute("moderador", mo);

		
			} catch (Exception e) {
		e.printStackTrace();
	}
	return SUCCESS;
}














@Action(value = "/verFotosmoderador", results = { @Result(params = { "inputName",	"imagenFotos" }, name = "success", type = "stream") })
public String verFotosmoderador() throws Exception {
	
	
			try {
		ModeradroServiceImpl service = new ModeradroServiceImpl();
		moderadorBean bean = service.obtienePorPKFotos(idCodigo);
		imagenFotos=	new ByteArrayInputStream(bean.getFotosBytes());
	} catch (Exception e) {
		e.printStackTrace();
	}
	return SUCCESS;
}





//
//@Action(value = "/verFotosTodosFotosAccidentes", results = { @Result(params = { "inputName",	"imagenFotos" }, name = "success", type = "stream") })
//public String verFotosAccidentes() throws Exception {
//	
//	
//			try {
//		IncidenciasServicelmpl service = new IncidenciasServicelmpl();
//		asignaFotos bean = service.obtienePorFotosEvidenciaPK(idCodigo);
//		imagenFotos=	new ByteArrayInputStream(bean.getFotosBytes());
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	return SUCCESS;
//}
//
//



























@Action(value = "/eliminaModerador", results = { @Result(name = "success", location = "/mantenimientoModerador.jsp") })
public String elimina() throws NumberFormatException, Exception {
	log.info("En eliminar Modalidad");
	ModeradroServiceImpl service = new ModeradroServiceImpl();
service.eliminaModerador(Integer.parseInt(idmoderador));
	try {

		
		
		} catch (Exception e) {
		e.printStackTrace();
	}
	return SUCCESS;
}










private List<agraviadosBean> beanagraviados;






public List<agraviadosBean> getBeanagraviados() {
	return beanagraviados;
}

public void setBeanagraviados(List<agraviadosBean> beanagraviados) {
	this.beanagraviados = beanagraviados;
}

@Action(value = "/consultaltodosporrrAgraviadosppppppppppp", results = { @Result(name = "success", location = "/mantenimientoAgraviados.jsp") })
public String listartodosagraviados() throws Exception {
	log.info("En listar Modalidad");
	ModeradroServiceImpl service = new ModeradroServiceImpl();
	try {
	
	


beanagraviados		=service.listadodeAgraviados(filtro);

	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return SUCCESS;
}


@Action(value = "/verFotosdeAgraviados", results = { @Result(params = { "inputName",	"imagenFotos" }, name = "success", type = "stream") })
public String verFotosdeAgraviados() throws Exception {
	
	
			try {
		ModeradroServiceImpl service = new ModeradroServiceImpl();
		agraviadosBean bean = service.obtienePorAgraviadosporFotos(idCodigo);
		imagenFotos=	new ByteArrayInputStream(bean.getFotosBytes());
	} catch (Exception e) {
		e.printStackTrace();
	}
	return SUCCESS;
}




























@SuppressWarnings("unchecked")
@Action(value = "/verDatosInci", 

		 results={
				
					@Result(name="success",location="/galeriaEvidencias.jsp"),
			})
		
		public String verdatosInci() throws Exception {
	
	
			try {
				
			
		IncidenciasServicelmpl service = new IncidenciasServicelmpl();
		
	
		List<asignaFotos> be=	 service.obtienePorIncidencia(idCodigo);

servletRequest.setAttribute("LISTA_INCIDENCIA", be);

		
			} catch (Exception e) {
		e.printStackTrace();
	}
	return SUCCESS;
}


 
}
