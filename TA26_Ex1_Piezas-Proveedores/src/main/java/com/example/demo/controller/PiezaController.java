package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.Pieza;
import com.example.demo.service.PiezaServiceImpl;

@RestController
@RequestMapping("/api")
public class PiezaController {

	@Autowired
	PiezaServiceImpl piezaServiceImpl;
	
	@GetMapping("/piezas")
	public List<Pieza> listarCcursos(){
		return piezaServiceImpl.listarPiezas();
	}
	
	
	@PostMapping("/piezas")
	public Pieza salvarCurso(@RequestBody Pieza pieza) {
		
		return piezaServiceImpl.guardarPieza(pieza);
	}
	
	
	@GetMapping("/piezas/{codigo}")
	public Pieza cursoXID(@PathVariable(name="codigo") Integer codigo) {
		
		Pieza Pieza_xid= new Pieza();
		
		Pieza_xid=piezaServiceImpl.piezaXID(codigo);
		
		return Pieza_xid;
	}
	
	@PutMapping("/piezas/{codigo}")
	public Pieza actualizarCurso(@PathVariable(name="codigo")Integer codigo,@RequestBody Pieza pieza) {
		
		Pieza Pieza_seleccionada= new Pieza();
		Pieza Pieza_actualizada= new Pieza();
		
		Pieza_seleccionada= piezaServiceImpl.piezaXID(codigo);
		
		Pieza_seleccionada.setNombre(pieza.getNombre());
		
		Pieza_actualizada = piezaServiceImpl.actualizarPieza(Pieza_seleccionada);
				
		return Pieza_actualizada;
	}
	
	@DeleteMapping("/piezas/{codigo}")
	public void eleiminarCurso(@PathVariable(name="codigo")Integer codigo) {
		piezaServiceImpl.eliminarPieza(codigo);
	}
}
