package web;

import com.opensymphony.xwork2.ActionSupport;
import dao.ILenguajeDao;
import dao.IMaratonDao;
import domain.Lenguaje;
import domain.Maraton;
import java.util.List;

public class LenguajeAction extends ActionSupport {

    private ILenguajeDao lenguajeDao;

    private IMaratonDao maratonDao;

    private Lenguaje lenguaje;

    private List<Lenguaje> lenguajes;

    private final String EMPTY = "empty";

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

    public String list() {
        lenguajes = getAll();
        if (lenguajes.isEmpty()) {
            return EMPTY;
        } else {
            return SUCCESS;
        }
    }

    public String edit() {
        System.out.println(lenguaje.getLenguajeId());
        lenguaje = lenguajeDao.getById(lenguaje.getLenguajeId());
        return SUCCESS;
    }

    public String update() {
        lenguajeDao.save(lenguaje);
        return SUCCESS;
    }

    public String delete() {
        if (validateDelete()) {
            lenguajeDao.delete(lenguaje);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public boolean validateDelete() {
        List<Maraton> maratones = maratonDao.findByLenguaje(lenguaje.getLenguajeId());
        for (Maraton maraton : maratones) {
            System.out.println(maraton);
        }
        System.out.println(maratones.size());
        System.out.println(maratones.isEmpty());
        return maratones.isEmpty();
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

    public IMaratonDao getMaratonDao() {
        return maratonDao;
    }

    public void setMaratonDao(IMaratonDao maratonDao) {
        this.maratonDao = maratonDao;
    }

}
