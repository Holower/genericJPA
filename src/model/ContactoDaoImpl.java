package model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import util.Conexion;

import entities.Contacto;

public class ContactoDaoImpl implements ContactoDao {
	Conexion con = null;
	
	public ContactoDaoImpl(){
		con = new Conexion();
		con.setC(Contacto.class);
	}

	@Override
	public Contacto selectById(Integer id) {
		Contacto c = (Contacto) con.find(id);		
		return c;
	}

	@Override
	public List<Contacto> selectAll() {
		
		List<Contacto> contactos = con.list();

		return contactos;
	}

	@Override
	public void insert(Contacto objeto) {
		
		con.insert(objeto);

	}

	@Override
	public void update(Contacto objeto) {

		con.update(objeto);

	}

	@Override
	public void delete(Contacto objeto) {
		
		con.delete(objeto);

	}


}
