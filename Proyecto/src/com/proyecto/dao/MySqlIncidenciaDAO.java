package com.proyecto.dao;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.proyecto.bean.asignaFotos;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.tipoagravioBean;
import com.proyecto.bean.zonaBean;

public class MySqlIncidenciaDAO implements IncidenciasDAO{
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
	
	public int insertaIncidencias(incidenciasBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.insert("SQL_insertaRegistroAnonimo",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	public int insertaIncidencia(incidenciasBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.insert("SQL_insertaRegistro",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<distritoBean> listadistrito() throws Exception {
		List<distritoBean> salida =  new ArrayList<distritoBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.selectList("SQL_lista_todos_distritos_incidencias",null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	@SuppressWarnings("unchecked")
	
	public List<zonaBean> listazona() throws Exception {
		List<zonaBean> salida =  new ArrayList<zonaBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.selectList("SQL_lista_todos_zona_incidencias",null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<tipoagravioBean> listatiposagravios() throws Exception {
		List<tipoagravioBean> salida =  new ArrayList<tipoagravioBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.selectList("SQL_lista_todos_tipo_incidencia",null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	public incidenciasBean obtienePorPK(int idUsuario) throws Exception {
		SqlSession session = null;
		incidenciasBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (incidenciasBean)session.selectOne("SQL_incidenciasporFotos", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	
	
	
	
	public incidenciasBean obtienePorID(int idUsuario) throws Exception {
		SqlSession session = null;
		incidenciasBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (incidenciasBean)session.selectOne("SQL_consultaIncidenciassssssss", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<incidenciasBean> consultaXdistritoXzona(incidenciasBean obj) throws Exception {
		List<incidenciasBean>  data = new ArrayList<incidenciasBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_consultaIncidencias", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	
//	public asignaFotos obtienePorFotosEvidenciaPK(int idUsuario) throws Exception {
//		SqlSession session = null;
//		asignaFotos bean  = null;
//		try {
//			session = sqlMapper.openSession();
//			bean = (asignaFotos)session.selectOne("SQL_incidenciasasignaporFotos", idUsuario);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally{
//			session.close();
//		}
//		return bean;
//	}
//	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int insertafotosIncidencias(asignaFotos bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.insert("SQL_insertaRegistroasignafotos",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	//OK
	public asignaFotos obtienePorPKasignaFotos(int idtbasigna_foto) throws Exception {
		SqlSession session = null;
		asignaFotos bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (asignaFotos)session.selectOne("SQL_buscaPK_asigna_Fotos", idtbasigna_foto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	//FALTA
	@SuppressWarnings("unchecked")
	public List<asignaFotos> obtienePorIncidencia(int idIncidencia) throws Exception {
		List<asignaFotos> salida =  new ArrayList<asignaFotos>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.selectList("SQL_BUSCA_FOTO_POR_Incidencia",idIncidencia);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	@SuppressWarnings("unchecked")
	public List<asignaFotos> consultaXportodosFotosEvidencias(asignaFotos obj) throws Exception {
		List<asignaFotos>  data = new ArrayList<asignaFotos>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_por_id_incidencias", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
}
