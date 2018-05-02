package util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entities.Contacto;
import entities.Usuario;
import model.ContactoDao;
import model.ContactoDaoImpl;
import model.UsuarioDao;

public class Prueba {
	public static void main(String[] args) {
		// objeto para manipular el dao
		ContactoDao cDao = new ContactoDaoImpl();
		
		Contacto c = new Contacto();
		c.setEmail("crangarita@gmail.com");
		c.setNombre("Carlos Rene Angarita S");
		
		cDao.insert(c);
		
		Contacto d = cDao.selectById(3);
		
		System.out.println("Nombre: " + d.getNombre());
		
		cDao.selectAll().forEach(System.out::println);
		
		Usuario u = new Usuario();
		/*
		u.setNombre("Carlos");
		u.setUsuario("claudiagomez");
		u.setClave("1234");
		u.setEmail("crangarita@gmail.com");
		*/
		UsuarioDao uDao = new UsuarioDao();
		//uDao.insert(u);
		u = uDao.find("crangarita");
		System.out.println("Email: " + d.getEmail());

		/*
		EntityManagerFactory emf =
		Persistence.createEntityManagerFactory("mensajemodel");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(c);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			em.close();
		}
*/
 /*
		// imprimir los clientes
		System.out.println("*****");
		clienteDao.obtenerClientes().forEach(System.out::println);
		*/
	}
}
