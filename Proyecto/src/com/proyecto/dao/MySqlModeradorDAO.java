package com.proyecto.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.proyecto.bean.agraviadosBean;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.moderadorBean;
import com.proyecto.service.ModeradroServiceImpl;

public class MySqlModeradorDAO implements ModeradorDAO{

	

	SqlSessionFactory sqlMapper = null;
	{
		String archivo = "ConfiguracionIbatis.xml";
		try {
			Reader reader = Resources.getResourceAsReader(archivo);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public moderadorBean loginModerador(moderadorBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		moderadorBean bean = null;
		try {
			bean = (moderadorBean) session.selectOne("dawi.SQL_login_moderador", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	
	
	public moderadorBean loginAdministrador(moderadorBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		moderadorBean bean = null;
		try {
			bean = (moderadorBean) session.selectOne("dawi.SQL_login_administador", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	

	
	
	
	
	

	@SuppressWarnings("unchecked")
	public List<incidenciasBean> listarTodos() throws Exception {
		List<incidenciasBean> data = new ArrayList<incidenciasBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_listatodosincidenciassssss");
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<moderadorBean> listaModeradores(String filtro) throws Exception {
		List<moderadorBean> data = new ArrayList<moderadorBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_listamoderador",filtro +"%");
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	

	
	
	@SuppressWarnings("unchecked")
	
	public List<moderadorBean> listarTodosmoderadores() throws Exception {
		List<moderadorBean> data = new ArrayList<moderadorBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_listatodos_moderadores");
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int insertaModeradores(moderadorBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.insert("SQL_insertaRegistroModeradores",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public moderadorBean buscavalida(moderadorBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		moderadorBean bean = null;
		try {
			bean = (moderadorBean) session.selectOne("dawi.SQL_lista_validadni_id", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public moderadorBean obtienePorPKFotos(int idUsuario) throws Exception {
		SqlSession session = null;
		moderadorBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (moderadorBean)session.selectOne("SQL_moderadorporFotos", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	
	
	
	
	
	
	
	
	
	
	public int eliminaModerador(int idUsuario) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.delete("SQL_eliminaModerador",idUsuario);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int actualizaModerador(moderadorBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.update("SQL_actualizaModerador",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	public int actualizaAsignaModerador(incidenciasBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.update("SQL_actualizaAsignaModerador",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public moderadorBean obtienePorIDModerador(int idUsuario) throws Exception {
		SqlSession session = null;
		moderadorBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (moderadorBean)session.selectOne("SQL_consultaIncidenciasModeradorr", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	
	
	
	
	
	
	
	
	
	
	public filtroIncidenciasBean obtienePorIDDistrito(int idUsuario) throws Exception {
		SqlSession session = null;
		filtroIncidenciasBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (filtroIncidenciasBean)session.selectOne("SQL_consultadatosDistritoss", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<incidenciasBean> consultaXtipoXagravio(incidenciasBean obj) throws Exception {
		List<incidenciasBean>  data = new ArrayList<incidenciasBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_listatodosincidenciasportipo", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<incidenciasBean> consultaXModerador(incidenciasBean obj) throws Exception {
		List<incidenciasBean>  data = new ArrayList<incidenciasBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_listatodosincidenciaspormoderador", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<incidenciasBean> listarTodoslosmoderadores() throws Exception {
		List<incidenciasBean> data = new ArrayList<incidenciasBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_listatodosporcadamoderadorasignado");
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<moderadorBean> moderadoreslistatodos() throws Exception {
		List<moderadorBean> data = new ArrayList<moderadorBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_todos_por_tipo_cualquier_moderador");
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<agraviadosBean> listadodeAgraviados(String filtro) throws Exception {
		List<agraviadosBean> data = new ArrayList<agraviadosBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_por_dni_agraviado",filtro +"%");
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public agraviadosBean obtienePorAgraviadosporFotos(int idUsuario) throws Exception {
		SqlSession session = null;
		agraviadosBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (agraviadosBean)session.selectOne("SQL_agraviadosporFotos", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	public incidenciasBean obtienePorIDINcidencias(int idUsuario) throws Exception {
		SqlSession session = null;
		incidenciasBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (incidenciasBean)session.selectOne("SQL_consultaIncidenciasasignaFotosID", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
}
