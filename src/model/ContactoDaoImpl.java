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
	}

	@Override
	public Contacto selectById(Integer id) {
		Contacto c = (Contacto) con.find(Contacto.class, id);		
		return c;
	}

	@Override
	public List<Contacto> selectAll() {
		
		List<Contacto> contactos = con.list(Contacto.class);

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
