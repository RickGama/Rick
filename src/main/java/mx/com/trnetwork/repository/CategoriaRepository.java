package mx.com.trnetwork.repository;

import org.springframework.data.repository.CrudRepository;

import mx.com.trnetwork.model.Categoria;

public interface CategoriaRepository extends CrudRepository<Categoria, Long> {
	Categoria findByProductos(long productoId);

}
