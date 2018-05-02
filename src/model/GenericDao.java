package model;

import java.util.List;

public interface GenericDao<T> {
	public List<T> list(Class<T> c);
	public <E> T find(Class<T> c, E id);
	public void insert(T o);
	public void update(T o);
	public void delete(T o);
}
