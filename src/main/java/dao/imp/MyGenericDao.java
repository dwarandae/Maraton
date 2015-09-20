package dao.imp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import dao.IMyGenericDao;

public abstract class MyGenericDao<T> implements IMyGenericDao<T> {
	
	private SessionFactory sessionFactory; 
	
	@Override
        @Transactional
	public void save(T objeto){
		Session session = getSession();
                session.saveOrUpdate(objeto);
	}
	
	@Override
        @Transactional
	public void delete(T objeto){
		Session session = getSession();
                session.delete(objeto);
	}
	
	@Transactional
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}

}
