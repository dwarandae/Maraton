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

        System.out.println("en getById");
        Query query = getSession().getNamedQuery("getLenguajeById").setLong("lenguajeId", id);
        Lenguaje lenguaje = (Lenguaje) query.uniqueResult();
        return lenguaje;

    }

    @Override
    @Transactional
    public List<Lenguaje> findAllLenguajes() {

        Query query = getSession().getNamedQuery("findLenguajes");
        return query.list();

    }

}
