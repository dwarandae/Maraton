package dao.imp;

import dao.IInscritoDao;
import domain.Inscrito;
import java.util.List;
import org.hibernate.Query;
import org.springframework.transaction.annotation.Transactional;

public class InscritoDao extends MyGenericDao<Inscrito> implements IInscritoDao{

	@Override
	@Transactional
	public Inscrito getById(Long id) {
		
		Query query = getSession().getNamedQuery("getInscritoById").setLong("id", id);
		Inscrito inscrito = (Inscrito) query.uniqueResult();
		return inscrito;
		
	}

	@Override
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Inscrito> findByTodos() {
		
		Query query = getSession().getNamedQuery("findInscritos");
		return query.list();
		
	}

	@Override
	@Transactional
	public Inscrito getByMaraton(String documento, Long maratonId){
		
		Query query = getSession().getNamedQuery("getInscritoByMaraton").setString("documento", documento).setLong("maratonId", maratonId);
		Inscrito inscrito = (Inscrito) query.uniqueResult();
		return inscrito;
		
	}
	
}
