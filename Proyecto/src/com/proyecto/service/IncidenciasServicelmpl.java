package com.proyecto.service;

import java.util.List;

import com.proyecto.bean.asignaFotos;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.tipoagravioBean;
import com.proyecto.bean.zonaBean;
import com.proyecto.dao.MySqlIncidenciaDAO;

public class IncidenciasServicelmpl implements IncidenciasService{
MySqlIncidenciaDAO dao = new MySqlIncidenciaDAO();

@Override
public int insertaIncidencias(incidenciasBean bean) throws Exception {
	// TODO Auto-generated method stub
	return dao.insertaIncidencias(bean);
}

@Override
public List<distritoBean> listadistrito() throws Exception {
	// TODO Auto-generated method stub
	return dao.listadistrito();
}

@Override
public List<zonaBean> listazona() throws Exception {
	// TODO Auto-generated method stub
	return dao.listazona();
}

@Override
public List<tipoagravioBean> listatiposagravios() throws Exception {
	// TODO Auto-generated method stub
	return dao.listatiposagravios();
}

@Override
public int insertaIncidencia(incidenciasBean bean) throws Exception {
	// TODO Auto-generated method stub
	return dao.insertaIncidencia(bean);
}

@Override
public incidenciasBean obtienePorPK(int idUsuario) throws Exception {
	// TODO Auto-generated method stub
	return dao.obtienePorPK(idUsuario);
}

@Override
public List<incidenciasBean> consultaXdistritoXzona(incidenciasBean obj) throws Exception {
	// TODO Auto-generated method stub
	return dao.consultaXdistritoXzona(obj);
}

@Override
public incidenciasBean obtienePorID(int idUsuario) throws Exception {
	// TODO Auto-generated method stub
	return dao.obtienePorID(idUsuario);
}

//@Override
//public asignaFotos obtienePorFotosEvidenciaPK(int idUsuario) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.obtienePorFotosEvidenciaPK(idUsuario);
//}

@Override
public int insertafotosIncidencias(asignaFotos bean) throws Exception {
	// TODO Auto-generated method stub
	return dao.insertafotosIncidencias(bean);
}

@Override
public asignaFotos obtienePorPKasignaFotos(int idUsuario) throws Exception {
	// TODO Auto-generated method stub
	return dao.obtienePorPKasignaFotos(idUsuario);
}

@Override
public List<asignaFotos> consultaXportodosFotosEvidencias(asignaFotos obj) throws Exception {
	// TODO Auto-generated method stub
	return dao.consultaXportodosFotosEvidencias(obj);
}

@Override
public List<asignaFotos> obtienePorIncidencia(int idIncidencia) throws Exception {
	// TODO Auto-generated method stub
	return dao.obtienePorIncidencia(idIncidencia);
}

}
