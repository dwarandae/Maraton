package dao;

import domain.Maraton;
import java.util.List;

public interface IMaratonDao extends IMyGenericDao<Maraton>{
	
	public Maraton getById(Long id);
	
	public List<Maraton> findByTodos();

}
