package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the usuariorol database table.
 * 
 */
@Entity
@NamedQuery(name="Usuariorol.findAll", query="SELECT u FROM Usuariorol u")
public class Usuariorol implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private UsuariorolPK id;

	public Usuariorol() {
	}

	public UsuariorolPK getId() {
		return this.id;
	}

	public void setId(UsuariorolPK id) {
		this.id = id;
	}

}