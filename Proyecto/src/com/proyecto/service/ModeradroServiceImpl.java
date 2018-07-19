package com.proyecto.service;

import java.util.List;

import com.proyecto.bean.agraviadosBean;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.moderadorBean;
import com.proyecto.dao.MySqlModeradorDAO;

public class ModeradroServiceImpl implements ModeradorService {
MySqlModeradorDAO dao = new MySqlModeradorDAO();
	@Override
	public moderadorBean loginModerador(moderadorBean usuarioBean) throws Exception {
		// TODO Auto-generated method stub
		return dao.loginModerador(usuarioBean);
	}
	@Override
	public List<incidenciasBean> listarTodos() throws Exception {
		// TODO Auto-generated method stub
		return dao.listarTodos();
	}
	@Override
	public moderadorBean loginAdministrador(moderadorBean usuarioBean) throws Exception {
		// TODO Auto-generated method stub
		return dao.loginAdministrador(usuarioBean);
	}
	@Override
	public List<moderadorBean> listaModeradores(String filtro) throws Exception {
		// TODO Auto-generated method stub
		return dao.listaModeradores(filtro);
	}
	@Override
	public List<moderadorBean> listarTodosmoderadores() throws Exception {
		// TODO Auto-generated method stub
		return dao.listarTodosmoderadores();
	}
	@Override
	public int insertaModeradores(moderadorBean bean) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertaModeradores(bean);
	}
	@Override
	public moderadorBean buscavalida(moderadorBean usuarioBean) throws Exception {
		// TODO Auto-generated method stub
		return dao.buscavalida(usuarioBean);
	}
	@Override
	public moderadorBean obtienePorPKFotos(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return dao.obtienePorPKFotos(idUsuario);
	}
	@Override
	public int eliminaModerador(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return dao.eliminaModerador(idUsuario);
	}
	@Override
	public int actualizaModerador(moderadorBean bean) throws Exception {
		// TODO Auto-generated method stub
		return dao.actualizaModerador(bean);
	}
	@Override
	public moderadorBean obtienePorIDModerador(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return dao.obtienePorIDModerador(idUsuario);
	}
	@Override
	public filtroIncidenciasBean obtienePorIDDistrito(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return dao.obtienePorIDDistrito(idUsuario);
	}
	@Override
	public int actualizaAsignaModerador(incidenciasBean bean) throws Exception{
		// TODO Auto-generated method stub
		return dao.actualizaAsignaModerador(bean);
	}
	@Override
	public List<incidenciasBean> consultaXtipoXagravio(incidenciasBean obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXtipoXagravio(obj);
	}
	@Override
	public List<incidenciasBean> consultaXModerador(incidenciasBean obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXModerador(obj);
	}
	@Override
	public List<incidenciasBean> listarTodoslosmoderadores() throws Exception {
		// TODO Auto-generated method stub
		return dao.listarTodoslosmoderadores();
	}
	@Override
	public List<moderadorBean> moderadoreslistatodos() throws Exception {
		// TODO Auto-generated method stub
		return dao.moderadoreslistatodos();
	}
	@Override
	public List<agraviadosBean> listadodeAgraviados(String filtro) throws Exception {
		// TODO Auto-generated method stub
		return dao.listadodeAgraviados(filtro);
	}
	@Override
	public agraviadosBean obtienePorAgraviadosporFotos(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return dao.obtienePorAgraviadosporFotos(idUsuario);
	}
	@Override
	public incidenciasBean obtienePorIDINcidencias(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return dao.obtienePorIDINcidencias(idUsuario);
	}
	
	
	

}
