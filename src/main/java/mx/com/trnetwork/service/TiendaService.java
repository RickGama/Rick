package mx.com.trnetwork.service;

import java.util.List;

import mx.com.trnetwork.model.Categoria;
import mx.com.trnetwork.model.Producto;

public interface TiendaService {
	
	public List<String> getAllCategoria(long categoriaId);
	
	public void agregarCategoria(Producto p, Long categoriaId);
	
	public List<Categoria> obtenerCategoria();

}
