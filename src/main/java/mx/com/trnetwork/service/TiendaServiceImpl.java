package mx.com.trnetwork.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import mx.com.trnetwork.model.Categoria;
import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.CategoriaRepository;
import mx.com.trnetwork.repository.ProductoRepository;

@Service
public class TiendaServiceImpl implements TiendaService {

	@Autowired
	private ProductoRepository productoRepository;
	@Autowired
	private CategoriaRepository categoriaRepository;

	@Override
	public List<String> getAllCategoria(long categoriaId) {

		List<String> resultado = new ArrayList<String>();
		List<Producto> productos = productoRepository.findByCategoriaId(categoriaId);

		for (Producto producto : productos) {
			resultado.add(producto.getName());
		}
		return resultado;

	}

	@Override
	public void agregarCategoria(Producto nuevoProducto, Long categoriaId) {
		
		System.out.println(nuevoProducto);
		Categoria categoria = categoriaRepository.findByProductos(categoriaId);
		nuevoProducto.setCategoria(categoria);
		productoRepository.save(nuevoProducto);


	}

	@Override
	public List<Categoria> obtenerCategoria() {
		List<Categoria> categorias = (List<Categoria>) categoriaRepository.findAll();
		return categorias;
	}

}
