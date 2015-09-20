package web;

import dao.*;
import domain.*;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

public class MaratonAction extends ActionSupport {

    private static final long serialVersionUID = 1L;

    private final String EMPTY = "empty";

    private IMaratonDao maratonDao;
    
    private ILenguajeDao lenguajeDao;

    private Maraton maraton;
    
    private Lenguaje lenguaje;

    private List<Maraton> maratones = new ArrayList<>();

    private List<Inscrito> inscritos = new ArrayList<>();

    private List<Maraton> available = new ArrayList<>();
    
    private List<Lenguaje> lenguajes = new ArrayList<>();
    

    public List<Maraton> getMaratones() {
        return maratones;
    }

    public List<Inscrito> getInscritos() {
        return inscritos;
    }

    public void setInscritos(List<Inscrito> inscritos) {
        this.inscritos = inscritos;
    }

    public IMaratonDao getMaratonDao() {
        return maratonDao;
    }

    public void setMaratones(List<Maraton> maratones) {
        this.maratones = maratones;
    }

    public void setMaratonDao(IMaratonDao maratonDao) {
        this.maratonDao = maratonDao;
    }

    public Maraton getMaraton() {
        return maraton;
    }

    public void setMaraton(Maraton maraton) {
        this.maraton = maraton;
    }

    public List<Maraton> getAvailable() {
        return available;
    }

    public void setAvailable(List<Maraton> available) {
        this.available = available;
    }

    public String list() {

        maratones = listAll();
        if (!maratones.isEmpty()) {
            return SUCCESS;
        } else {
            return EMPTY;
        }

    }

    //Devuelve solo las maratones que de acuerdo a la fecha, se pueden inscribir.
    public String listAvailable() {

        maratones = listAll();

        Date hoy = new Date();
        for (Maraton maraton : maratones) {
            if (hoy.after(maraton.getFechaInicio()) && hoy.before(maraton.getFechaFin())) {
                available.add(maraton);
            }
        }
        if (!available.isEmpty()) {
            return SUCCESS;
        } else {
            return EMPTY;
        }

    }

    public String create() {
        lenguajes = lenguajeDao.findAllLenguajes();
        return SUCCESS;
    }

    public String createMaraton() throws Exception {

        if (validate(maraton)) {
            maratonDao.save(maraton);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public boolean validate(Maraton maraton) {
        return maraton.getFechaFin().after(maraton.getFechaInicio())
                && maraton.getFecha().after(maraton.getFechaFin());
    }

    public String delete() {
        maratonDao.delete(maratonDao.getById(maraton.getId()));
        return SUCCESS;
    }

    public String edit() {
        maraton = maratonDao.getById(maraton.getId());
        return SUCCESS;
    }

    public String updateMaraton() {
        maratonDao.save(maraton);
        return SUCCESS;
    }

    public String inscritos() {
        maraton = maratonDao.getById(maraton.getId());
        inscritos = maraton.getInscritos();
        System.out.println(inscritos);
        if (!inscritos.isEmpty()) {
            return SUCCESS;
        } else {
            return EMPTY;
        }

    }

    //Devuelve todas las maratones, sin importar el estado.
    public List<Maraton> listAll() {

        Date hoy = new Date();
        List<Maraton> allMaraton = maratonDao.findByTodos();
        for (Maraton maraton : allMaraton) {

            if (hoy.before(maraton.getFechaInicio())) {
                maraton.setEstado("Creada");
            } else if (hoy.before(maraton.getFechaFin())) {
                maraton.setEstado("Inscripciones abiertas");
            } else if (hoy.before(maraton.getFecha())) {
                maraton.setEstado("Inscripciones cerradas");
            } else {
                maraton.setEstado("Finalizada");
            }

        }
        return allMaraton;

    }
    
    public String listByLenguaje() {
        maratones = maratonDao.findByLenguaje(lenguaje.getLenguajeId());
        if(maratones.isEmpty())
            return EMPTY;
        else
            return SUCCESS;
    }

    public List<Lenguaje> getLenguajes() {
        return lenguajes;
    }

    public void setLenguajes(List<Lenguaje> lenguajes) {
        this.lenguajes = lenguajes;
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

}