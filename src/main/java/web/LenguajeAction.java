package web;

import com.opensymphony.xwork2.ActionSupport;
import dao.ILenguajeDao;
import domain.Lenguaje;
import java.util.List;

public class LenguajeAction extends ActionSupport {

    private ILenguajeDao lenguajeDao;

    private Lenguaje lenguaje;
    
    private List<Lenguaje> lenguajes;
    
    private final String EMPTY = "EMPTY";

    public String create() {
        return SUCCESS;
    }

    public String createLenguaje() {
        if (validate(lenguaje)) {
            lenguajeDao.save(lenguaje);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    private boolean validate(Lenguaje lenguaje) {
        if (isNullOrEmpty(lenguaje.getNombre()) || isNullOrEmpty(lenguaje.getVersion())) {
            return false;
        }
        return true;
    }
    
    public String listAll() {
        lenguajes = getAll();
        if(lenguajes.isEmpty())
            return EMPTY;
        else
            return SUCCESS;
    }
    
    private List<Lenguaje> getAll() {
        return lenguajeDao.findAllLenguajes();
    }

    private boolean isNullOrEmpty(String text) {
        return text == null || text.isEmpty();
    }

    public ILenguajeDao getLenguajeDao() {
        return lenguajeDao;
    }

    public void setLenguajeDao(ILenguajeDao lenguajeDao) {
        this.lenguajeDao = lenguajeDao;
    }

    public Lenguaje getLenguaje() {
        return lenguaje;
    }

    public void setLenguaje(Lenguaje lenguaje) {
        this.lenguaje = lenguaje;
    }

    public List<Lenguaje> getLenguajes() {
        return lenguajes;
    }

    public void setLenguajes(List<Lenguaje> lenguajes) {
        this.lenguajes = lenguajes;
    }

}
