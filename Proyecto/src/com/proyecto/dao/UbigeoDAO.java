package com.proyecto.dao;

import java.util.List;

import com.proyecto.bean.detalleAsignaModerador;
import com.proyecto.bean.distritoBean;

public interface UbigeoDAO {
	public List<detalleAsignaModerador> consultaXUbigeoXZona() throws Exception ;
	public List<detalleAsignaModerador> consultaXUbigeoXDistrito(detalleAsignaModerador obj) throws Exception;
	public List<detalleAsignaModerador> consultaXUbigeoXModerador(detalleAsignaModerador obj) throws Exception;







	public List<distritoBean> consultaXUbigeoXzonanuevas() throws Exception;
	public List<distritoBean> consultaXUbigeoXDistritosnuevas(distritoBean obj) throws Exception;
	public List<distritoBean> consultaXUbigeoXModeradornuevas(distritoBean obj) throws Exception;

}
