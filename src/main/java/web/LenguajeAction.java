package web;

import com.opensymphony.xwork2.ActionSupport;
import dao.ILenguajeDao;
import domain.Lenguaje;

public class LenguajeAction extends ActionSupport {
    
    private ILenguajeDao lenguajeDao;
    
    private Lenguaje lenguaje;
   
    public String create() {
        return SUCCESS;
    }
    
    public String createLenguaje() {
        if(validate(lenguaje)){
            lenguajeDao.save(lenguaje);
            return SUCCESS;
        }
        else
            return ERROR;
    }
    
    private boolean validate(Lenguaje lenguaje) {
        if(lenguaje.getNombre() == null || lenguaje.getVersion() == null )
            return false;
        return true;
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
