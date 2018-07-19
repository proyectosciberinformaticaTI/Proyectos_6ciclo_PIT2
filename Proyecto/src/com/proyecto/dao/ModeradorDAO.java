package com.proyecto.dao;

import java.util.List;

import com.proyecto.bean.agraviadosBean;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.moderadorBean;

public interface ModeradorDAO {
	public moderadorBean loginModerador(moderadorBean usuarioBean) throws Exception;
	public List<incidenciasBean> listarTodos() throws Exception;
	public moderadorBean loginAdministrador(moderadorBean usuarioBean) throws Exception;
	
	public moderadorBean buscavalida(moderadorBean usuarioBean) throws Exception;
	
	
	public List<moderadorBean> listaModeradores(String filtro) throws Exception;
	public List<moderadorBean> listarTodosmoderadores() throws Exception;
	public int insertaModeradores(moderadorBean bean) throws Exception;
	public moderadorBean obtienePorPKFotos(int idUsuario) throws Exception;
	public int eliminaModerador(int idUsuario) throws Exception ;
	public int actualizaModerador(moderadorBean bean) throws Exception;
	public moderadorBean obtienePorIDModerador(int idUsuario) throws Exception;
	public filtroIncidenciasBean obtienePorIDDistrito(int idUsuario) throws Exception;
	
	public int actualizaAsignaModerador(incidenciasBean bean) throws Exception;
	public List<incidenciasBean> consultaXtipoXagravio(incidenciasBean obj) throws Exception;
	public List<incidenciasBean> consultaXModerador(incidenciasBean obj) throws Exception;
	public List<incidenciasBean> listarTodoslosmoderadores() throws Exception;
	public List<moderadorBean> moderadoreslistatodos() throws Exception;
	public List<agraviadosBean> listadodeAgraviados(String filtro) throws Exception;
	public agraviadosBean obtienePorAgraviadosporFotos(int idUsuario) throws Exception;
	public incidenciasBean obtienePorIDINcidencias(int idUsuario) throws Exception;
}
