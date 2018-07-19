package com.proyecto.service;

import java.util.List;

import com.proyecto.bean.detalleAsignaModerador;
import com.proyecto.bean.distritoBean;
import com.proyecto.dao.MySqlUbigeoDAO;

public class UbigeoServicelmpl implements UbigeoService {
   MySqlUbigeoDAO dao = new MySqlUbigeoDAO();
	@Override
	public List<detalleAsignaModerador> consultaXUbigeoXZona() throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXUbigeoXZona();
	}

	
	 
	@Override
	public List<detalleAsignaModerador> consultaXUbigeoXDistrito(detalleAsignaModerador obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXUbigeoXDistrito(obj);
	}
	
	@Override
	public List<detalleAsignaModerador> consultaXUbigeoXModerador(detalleAsignaModerador obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXUbigeoXModerador(obj);
	}



	@Override
	public List<distritoBean> consultaXUbigeoXzonanuevas() throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXUbigeoXzonanuevas();
	}



	@Override
	public List<distritoBean> consultaXUbigeoXDistritosnuevas(distritoBean obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXUbigeoXDistritosnuevas(obj);
	}



	@Override
	public List<distritoBean> consultaXUbigeoXModeradornuevas(distritoBean obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.consultaXUbigeoXModeradornuevas(obj);
	}

}
