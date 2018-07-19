package com.proyecto.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.proyecto.bean.detalleAsignaModerador;
import com.proyecto.bean.distritoBean;
import com.proyecto.bean.filtroIncidenciasBean;
import com.proyecto.bean.tipoagravioBean;

public class MySqlUbigeoDAO implements UbigeoDAO{


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
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<detalleAsignaModerador> consultaXUbigeoXZona() throws Exception {
		List<detalleAsignaModerador> salida =  new ArrayList<detalleAsignaModerador>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.selectList("SQL_lista_asignazona",null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return salida;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<detalleAsignaModerador> consultaXUbigeoXDistrito(detalleAsignaModerador obj) throws Exception {
		List<detalleAsignaModerador>  data = new ArrayList<detalleAsignaModerador>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_asignadistrito", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	  
	
	
	@SuppressWarnings("unchecked")
	public List<detalleAsignaModerador> consultaXUbigeoXModerador(detalleAsignaModerador obj) throws Exception {
		List<detalleAsignaModerador>  data = new ArrayList<detalleAsignaModerador>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_asignamoderador", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<distritoBean> consultaXUbigeoXzonanuevas() throws Exception {
		List<distritoBean>  data = new ArrayList<distritoBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_asignazonalasnuevas", null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<distritoBean> consultaXUbigeoXDistritosnuevas(distritoBean obj) throws Exception {
		List<distritoBean>  data = new ArrayList<distritoBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_asignadistritonuevas", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<distritoBean> consultaXUbigeoXModeradornuevas(distritoBean obj) throws Exception {
		List<distritoBean>  data = new ArrayList<distritoBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			data = session.selectList("SQL_lista_asignamoderadornuevas", obj);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return data;
	}
	
	  
}
