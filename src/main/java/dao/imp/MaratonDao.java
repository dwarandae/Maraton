package dao.imp;

import dao.IMaratonDao;
import domain.Maraton;
import java.util.List;
import org.hibernate.Query;
import org.springframework.transaction.annotation.Transactional;


public class MaratonDao extends MyGenericDao<Maraton> implements IMaratonDao{
	
	@Override
	@Transactional
	public Maraton getById(Long id){
		
		Query query = getSession().getNamedQuery("getMaratonById").setLong("id", id);
		Maraton maraton = (Maraton) query.uniqueResult();
		return maraton;
		
	}

	@Override
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Maraton> findByTodos() {
		
		Query query = getSession().getNamedQuery("findMaratones");
		return query.list();
		
	}

}
