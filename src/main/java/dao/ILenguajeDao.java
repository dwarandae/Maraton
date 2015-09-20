package dao;

import domain.Lenguaje;
import java.util.List;

public interface ILenguajeDao extends IMyGenericDao<Lenguaje> {
    
    public Lenguaje getById(Long id);
	
    public List<Lenguaje> findAllLenguajes();
    
}
