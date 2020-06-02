package mx.com.trnetwork.restController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;

@RestController
public class WsProductos {

	@Autowired
	ProductoRepository repo;

	@GetMapping("/productos")
	Iterable<Producto> listar() {
		return repo.findAll();

	}

	@GetMapping("/productos/{id}")
	Optional<Producto> recuperar(@PathVariable long id) {
		return repo.findById(id);

	}

	@DeleteMapping("/productos/{id}")
	void eliminar(@PathVariable long id) {
		repo.deleteById(id);
	}

	@PostMapping("/productos")
	Producto crear(@RequestBody Producto pr) {
		return repo.save(pr);
	}

	@PutMapping("/productos")
	void actualizar(@RequestBody Producto pr) {
		repo.save(pr);

	}

	
}
