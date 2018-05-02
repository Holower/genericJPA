package entities;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the usuariorol database table.
 * 
 */
@Embeddable
public class UsuariorolPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	private int rol;

	private String usuario;

	public UsuariorolPK() {
	}
	public int getRol() {
		return this.rol;
	}
	public void setRol(int rol) {
		this.rol = rol;
	}
	public String getUsuario() {
		return this.usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof UsuariorolPK)) {
			return false;
		}
		UsuariorolPK castOther = (UsuariorolPK)other;
		return 
			(this.rol == castOther.rol)
			&& this.usuario.equals(castOther.usuario);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.rol;
		hash = hash * prime + this.usuario.hashCode();
		
		return hash;
	}
}