package com.proyecto.service;

import com.proyecto.bean.agraviadosBean;
import com.proyecto.dao.MySqlAgraviadosDAO;

public class AgraviadosServicelmpl implements AgraviadosService {
MySqlAgraviadosDAO dao= new MySqlAgraviadosDAO();
	@Override
	public agraviadosBean login(agraviadosBean usuarioBean) throws Exception {
		// TODO Auto-generated method stub
		return dao.login(usuarioBean);
	}
	@Override
	public int cambioContrasena(agraviadosBean bean) throws Exception {
		// TODO Auto-generated method stub
		return dao.cambioContrasena(bean);
	}
	@Override
	public int insertaAgraviados(agraviadosBean bean) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertaAgraviados(bean);
	}
	@Override
	public agraviadosBean buscavalidaporAgraviadosDNI(agraviadosBean usuarioBean) throws Exception {
		// TODO Auto-generated method stub
		return dao.buscavalidaporAgraviadosDNI(usuarioBean);
	}
	@Override
	public agraviadosBean buscavalidaporAgraviadosUsuario(agraviadosBean usuarioBean) throws Exception {
		// TODO Auto-generated method stub
		return dao.buscavalidaporAgraviadosUsuario(usuarioBean);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Override
	public int insertaAgraviadoswebservice(agraviadosBean bean) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertaAgraviadoswebservice(bean);
	}

}
