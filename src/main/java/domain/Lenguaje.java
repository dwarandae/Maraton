package domain;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "lenguaje")
@NamedQueries({
    @NamedQuery(name = "getLenguajeById", query = "FROM Lenguaje WHERE lenguajeId = :id"),
    @NamedQuery(name = "findLenguajes", query = "FROM Lenguaje")})
public class Lenguaje implements Serializable {

    @Id
    @Column(name = "lenguaje_id", nullable = false, unique = true)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "seq", sequenceName = "seq_lenguaje", allocationSize = 1, initialValue = 1)
    private Long lenguajeId;
    
    @Column(name = "lenguaje_nombre", nullable = false)
    private String nombre;
    
    @Column(name = "lenguaje_version", nullable = false)
    private String version;
    
    public Lenguaje() {
    }
    
    public Lenguaje(String nombre, String version) {
        this.nombre = nombre;
        this.version = version;
    }

    public Long getLenguajeId() {
        return lenguajeId;
    }

    public void setLenguajeId(Long lenguajeId) {
        this.lenguajeId = lenguajeId;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 71 * hash + Objects.hashCode(this.lenguajeId);
        hash = 71 * hash + Objects.hashCode(this.nombre);
        hash = 71 * hash + Objects.hashCode(this.version);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Lenguaje other = (Lenguaje) obj;
        if (!Objects.equals(this.lenguajeId, other.lenguajeId)) {
            return false;
        }
        if (!Objects.equals(this.nombre, other.nombre)) {
            return false;
        }
        if (!Objects.equals(this.version, other.version)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Lenguaje{" + "lenguajeId=" + lenguajeId + ", nombre=" + nombre + ", version=" + version + '}';
    }
    
}
