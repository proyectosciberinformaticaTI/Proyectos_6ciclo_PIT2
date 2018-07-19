package com.proyecto.webservice;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.proyecto.bean.distritoBean;
import com.proyecto.dao.MySqlIncidenciaDAO;
import com.proyecto.service.IncidenciasServicelmpl;

@Path("/miservicio")
public class incidenciasServicio {

	
	
	@GET
	@Path("/saludo")
	@Produces(MediaType.TEXT_PLAIN)
	public String getTexto(){
		return "Helo wolrd";
	}
    MySqlIncidenciaDAO daoinci= new MySqlIncidenciaDAO();
	@GET
	@Path("/listadistrito")
	public List<distritoBean> listadistrito() throws Exception{
		return daoinci.listadistrito();
	}
	
	
}
