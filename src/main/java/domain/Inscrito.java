package domain;

import java.util.*;
import javax.persistence.*;

@Entity
@Table(name = "inscrito")
@NamedQueries({
		@NamedQuery(name = "getInscritoById", query = "FROM Inscrito i WHERE i.id = :id"),
		@NamedQuery(name = "findInscritos", query = "FROM Inscrito i") })
		@NamedQuery(name = "getInscritoByMaraton", query = "FROM Inscrito i WHERE i.documento = :documento AND i.maraton.id = :maratonId")
public class Inscrito {

	@Id
	@Column(name = "ins_id", nullable = false, unique = true)
	@GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "seq", sequenceName = "seq_inscrito", allocationSize = 1, initialValue = 1)
	private Long id;

	@Column(name = "ins_documento", nullable = false)
	private String documento;

	@Column(name = "ins_nombre", nullable = false)
	private String nombre;

	@Column(name = "ins_direccion", length = 100, nullable = false)
	private String direccion;

	@Column(name = "ins_telefono", length = 20, nullable = false)
	private String telefono;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "mar_id")
	private Maraton maraton;

	@Column(name = "ins_fecha_inscripcion", nullable = false)
	private Date fechaInscripcion = new Date();

	@Column(name = "ins_codigo", nullable = false, unique = true)
	private String codigo;

	public Inscrito() {}

	public Inscrito(String nombre, String direccion, String telefono,
			Maraton maraton, String codigo) {

		this.nombre = nombre;
		this.direccion = direccion;
		this.telefono = telefono;
		this.maraton = maraton;
		this.codigo = codigo;

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Maraton getMaraton() {
		return maraton;
	}

	public void setMaraton(Maraton maraton) {
		this.maraton = maraton;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getDocumento() {
		return documento;
	}

	public void setDocumento(String documento) {
		this.documento = documento;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Date getFecha() {
		return fechaInscripcion;
	}

	public void setFecha(Date fecha) {
		this.fechaInscripcion = fecha;
	}

	public Date getFechaInscripcion() {
		return fechaInscripcion;
	}

	public void setFechaInscripcion(Date fechaInscripcion) {
		this.fechaInscripcion = fechaInscripcion;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		return "Inscrito [id=" + id + ", documento=" + documento + ", nombre="
				+ nombre + ", direccion=" + direccion + ", telefono="
				+ telefono + ", fechaInscripcion=" + fechaInscripcion + "]";
	}
}
