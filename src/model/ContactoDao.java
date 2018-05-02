package model;

import java.util.List;

import entities.Contacto;

public interface ContactoDao {

	public Contacto selectById(Integer id);

	public List<Contacto> selectAll();

	public void insert(Contacto objeto);
	
	public void update(Contacto objeto);

	public void delete(Contacto objeto);
}