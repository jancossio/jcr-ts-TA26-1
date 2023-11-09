package com.example.demo.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="suministra")
public class Suministra {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
    @JoinColumn(name = "id_proveedor")
    Proveedor proveedor;
 
    @ManyToOne
    @JoinColumn(name = "codigo_pieza")
    Pieza pieza;
	
	
	public Suministra() {
	
	}

	public Suministra(Integer id, Proveedor proveedor, Pieza pieza) {
		super();
		this.id = id;
		this.proveedor = proveedor;
		this.pieza = pieza;
	}

	
	public int getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Proveedor getProveedor() {
		return proveedor;
	}

	public void setProveedor(Proveedor proveedor) {
		this.proveedor = proveedor;
	}

	public Pieza getPieza() {
		return pieza;
	}

	public void setPieza(Pieza pieza) {
		this.pieza = pieza;
	}

	
	@Override
	public String toString() {
		return "Suministra [id=" + id + ", estudiante=" + proveedor + ", curso=" + pieza + "]";
	}
}
