package mx.com.trnetwork.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import mx.com.trnetwork.model.Producto;

public interface ProductoRepository extends CrudRepository<Producto, Long> {
	
	List<Producto> findByNameContainingIgnoreCase(String name);
	List<Producto> findByNameContainingOrDescripcionContaining(String name, String descripcion);
	List<Producto> findByCategoriaId(long categoriaId);

}

