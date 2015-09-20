package domain;

import java.io.Serializable;
import java.util.*;
import javax.persistence.*;

@Entity
@Table(name = "maraton")
@NamedQueries({
		@NamedQuery(name = "getMaratonById", query = "FROM Maraton WHERE id = :id"),
		@NamedQuery(name = "findMaratones", query = "FROM Maraton"),
                @NamedQuery(name = "findMaratonesByLenguaje", query = "FROM Maraton WHERE lenguaje.id = :lenguajeId")})
public class Maraton implements Serializable{

	@Id
	@Column(name = "mar_id", nullable = false, unique = true)
	@GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "seq", sequenceName = "seq_maraton", allocationSize = 1, initialValue = 1)
	private Long id;

	@Column(name = "mar_nombre", nullable = false)
	private String nombre;

	@Column(name = "mar_fecha_nicio", nullable = false)
	private Date fechaInicio;

	@Column(name = "mar_fecha_fin", nullable = false)
	private Date fechaFin;

	@Column(name = "mar_fecha", nullable = false)
	private Date fecha;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "maraton")
	private List<Inscrito> inscritos = new ArrayList<Inscrito>();
        
        @ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "mar_lenguaje")
        private Lenguaje lenguaje;
        
	@Transient
	private String estado;

	public Maraton() {
	}

	public Maraton(String nombre, Date fechaInicio, Date fechaFin,
			Lenguaje lenguaje, Date fecha, List<Inscrito> inscritos) {

		this.nombre = nombre;
		this.fechaInicio = fechaInicio;
		this.fechaFin = fechaFin;
		this.lenguaje = lenguaje;
		this.fecha = fecha;
		this.inscritos = inscritos;

	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getFechaInicio() {
		return fechaInicio;
	}

	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public Date getFechaFin() {
		return fechaFin;
	}

	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

	public Lenguaje getLenguaje() {
		return lenguaje;
	}

	public void setLenguaje(Lenguaje lenguaje) {
		this.lenguaje = lenguaje;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	@Override
	public String toString() {
		return "Maraton [id=" + id + ", nombre=" + nombre + ", fechaInicio="
				+ fechaInicio + ", fechaFin=" + fechaFin + ", fecha=" + fecha
				+ ", lenguaje=" + lenguaje + ", inscritos=" + inscritos
				+ ", estado=" + estado + "]";
	}

	public List<Inscrito> getInscritos() {
		return inscritos;
	}

	public void setInscritos(List<Inscrito> inscritos) {
		this.inscritos = inscritos;
	}

	public void agregarInscrito(Inscrito inscrito) {
		//Recíproco
		inscrito.setMaraton(this);
		inscritos.add(inscrito);
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

}
