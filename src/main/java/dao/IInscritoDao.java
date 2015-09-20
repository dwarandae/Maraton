package dao;

import domain.Inscrito;
import java.util.List;


public interface IInscritoDao extends IMyGenericDao<Inscrito>{
	
	public Inscrito getById(Long id);
	
	public List<Inscrito> findByTodos();
	
	public Inscrito getByMaraton(String documento, Long maratonId);
	

}
