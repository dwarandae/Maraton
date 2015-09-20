package dao.imp;

import dao.ILenguajeDao;
import domain.Lenguaje;
import java.util.List;
import org.hibernate.Query;
import org.springframework.transaction.annotation.Transactional;

public class LenguajeDao extends MyGenericDao<Lenguaje> implements ILenguajeDao {

    @Override
    @Transactional
    public Lenguaje getById(Long id) {

        Query query = getSession().getNamedQuery("getInscritoById").setLong("lenguajeId", id);
        Lenguaje lenguaje = (Lenguaje) query.uniqueResult();
        return lenguaje;

    }

    @Override
    @Transactional
    @SuppressWarnings("unchecked")
    public List<Lenguaje> findAllLenguajes() {

        Query query = getSession().getNamedQuery("findLenguajes");
        return query.list();

    }

}
