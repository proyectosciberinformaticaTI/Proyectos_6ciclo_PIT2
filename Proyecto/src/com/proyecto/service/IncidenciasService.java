package com.proyecto.service;

import java.util.List;

import com.proyecto.bean.asignaFotos;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.tipoagravioBean;
import com.proyecto.bean.zonaBean;

public interface IncidenciasService {
	public int insertaIncidencias(incidenciasBean bean) throws Exception;
	public List<distritoBean> listadistrito() throws Exception ;
	public List<zonaBean> listazona() throws Exception ;
	public List<tipoagravioBean> listatiposagravios() throws Exception ;
	public int insertaIncidencia(incidenciasBean bean) throws Exception;
	public incidenciasBean obtienePorPK(int idUsuario) throws Exception;
	public List<incidenciasBean> consultaXdistritoXzona(incidenciasBean obj) throws Exception;
	public incidenciasBean obtienePorID(int idUsuario) throws Exception;
//	public asignaFotos obtienePorFotosEvidenciaPK(int idUsuario) throws Exception ;
	public int insertafotosIncidencias(asignaFotos bean) throws Exception;

	public asignaFotos obtienePorPKasignaFotos(int idUsuario) throws Exception;
	public List<asignaFotos> consultaXportodosFotosEvidencias(asignaFotos obj) throws Exception;


	
	
	
	public List<asignaFotos> obtienePorIncidencia(int idIncidencia) throws Exception;
	

}
