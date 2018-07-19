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
import com.proyecto.bean.incidenciasBean;
import com.proyecto.bean.moderadorBean;
public class MySqlAgraviadosDAO implements AgraviadosDAO {

	

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
	
	
	//Autenticacion del usuario agraviado
	public agraviadosBean login(agraviadosBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		agraviadosBean bean = null;
		try {
			bean = (agraviadosBean) session.selectOne("dawi.SQL_login", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	//Metodo de cambio o actualizacion de contraseña
	public int cambioContrasena(agraviadosBean bean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		int salida = -1;
		try {
			salida = session.update("dawi.SQL_cambioContrasena",
					bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return salida;
	}
	
	
	
	
	//Metodo de inserccion de datos del agraviado
	public int insertaAgraviados(agraviadosBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.insert("SQL_insertaAgraviados",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
	
	
	//Verifica, y selecciona que el dni este en la bd
	public agraviadosBean buscavalidaporAgraviadosDNI(agraviadosBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		agraviadosBean bean = null;
		try {
			bean = (agraviadosBean) session.selectOne("dawi.SQL_lista_valida_agraviados_dni_id", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	



















//Verifica, y selecciona que el dni este en la bd
	public agraviadosBean buscavalidaporAgraviadosUsuario(agraviadosBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		agraviadosBean bean = null;
		try {
			bean = (agraviadosBean) session.selectOne("dawi.SQL_lista_valida_agraviados_dni_id", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int insertaAgraviadoswebservice(agraviadosBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.insert("SQL_insertaAgraviadoswebservice",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	
}
