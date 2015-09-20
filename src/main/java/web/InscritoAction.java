package web;

import dao.*;
import domain.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;


public class InscritoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IInscritoDao inscritoDao;

	private IMaratonDao maratonDao;

	private Maraton maraton;

	private Inscrito inscrito;

	private static final String EMPTY = "empty";

	private List<Inscrito> inscritos = new ArrayList<>();
	
	private List<Maraton> maratones = new ArrayList<>();
	
	private List<Maraton> available = new ArrayList<>();

	public List<Maraton> getAvailable() {
		return available;
	}

	public void setAvailable(List<Maraton> available) {
		this.available = available;
	}

	public void setInscritoDao(IInscritoDao inscritoDao) {
		this.inscritoDao = inscritoDao;
	}

	public void setMaratonDao(IMaratonDao maratonDao) {
		this.maratonDao = maratonDao;
	}

	public Inscrito getInscrito() {
		return inscrito;
	}

	public void setInscrito(Inscrito inscrito) {
		this.inscrito = inscrito;
	}

	public List<Inscrito> getInscritos() {
		return inscritos;
	}

	public List<Maraton> getMaratones() {
		return maratones;
	}

	public void setMaratones(List<Maraton> maratones) {
		this.maratones = maratones;
	}

	public String list() {
		
		inscritos = inscritoDao.findByTodos();
		if (inscritos.size() != 0)
			return SUCCESS;
		else
			return EMPTY;
		
	}

	public String create() {
		
		maratones = listAll();
		
		Date hoy = new Date();
		for (Maraton maraton : maratones)
			if (hoy.after(maraton.getFechaInicio()) && hoy.before(maraton.getFechaFin()))
				available.add(maraton);
		if(available.size()!=0)
			return SUCCESS;
		else
			return EMPTY;
	}

	public String createInscrito() throws Exception {

		Inscrito doble = inscritoDao.getByMaraton(inscrito.getDocumento(),
				inscrito.getMaraton().getId());
		if (doble == null) {
			maraton = maratonDao.getById(inscrito.getMaraton().getId());
			maraton.agregarInscrito(inscrito);
			inscrito.setMaraton(maraton);
			inscrito.setCodigo(generarCodigo());
			inscritoDao.save(inscrito);
			return SUCCESS;
		} else
			return ERROR;
	}

	public String delete() {

		inscritoDao.delete(inscritoDao.getById(inscrito.getId()));
		return SUCCESS;

	}

	public String edit() {

		inscrito = inscritoDao.getById(inscrito.getId());
		maratones = maratonDao.findByTodos();
		return SUCCESS;

	}

	public String updateInscrito() {

		System.out.println(inscrito);
		inscritoDao.save(inscrito);
		return SUCCESS;

	}

	public List<Maraton> listAll(){
		
		Date hoy = new Date();
		List<Maraton> allMaraton = maratonDao.findByTodos();
		for(Maraton maraton: allMaraton){
			
			if(hoy.before(maraton.getFechaInicio()))
				maraton.setEstado("Creada");
			else if(hoy.before(maraton.getFechaFin()))
				maraton.setEstado("Inscripciones abiertas");
			else if(hoy.before(maraton.getFecha()))
				maraton.setEstado("Inscripciones cerradas");
			else
				maraton.setEstado("Finalizada");

		}
		return allMaraton;
				
	}	
	
	//Rudimentario código de inscripción.
	public String generarCodigo() {

		int i = 0;
		StringBuilder codigo = new StringBuilder();
		while (i < 10) {
			Random gen = new Random();
			int number = 65 + gen.nextInt(26);
			int op = gen.nextInt(2);
			char character = (char) number;
			String symbol = character + "";
			if (op == 0)
				symbol = symbol.toLowerCase();
			codigo.append(symbol);
			i++;
		}
		return codigo.toString();

	}
}
