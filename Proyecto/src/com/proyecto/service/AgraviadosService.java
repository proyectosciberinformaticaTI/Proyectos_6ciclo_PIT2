package com.proyecto.service;

import com.proyecto.bean.agraviadosBean;

public interface AgraviadosService {
	public agraviadosBean login(agraviadosBean usuarioBean) throws Exception ;
	public int cambioContrasena(agraviadosBean bean) throws Exception;
	public int insertaAgraviados(agraviadosBean bean) throws Exception;

	public agraviadosBean buscavalidaporAgraviadosDNI(agraviadosBean usuarioBean) throws Exception ;
	public agraviadosBean buscavalidaporAgraviadosUsuario(agraviadosBean usuarioBean) throws Exception ;
	
	
	
	
	
	
	
	
	
	public int insertaAgraviadoswebservice(agraviadosBean bean) throws Exception;
}
