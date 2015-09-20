package dao;

public interface IMyGenericDao <T>{
	
	public void save(T objeto);
	
	public void delete(T objeto);
	
}
