package mx.com.trnetwork.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;
import mx.com.trnetwork.service.TiendaService;

@RestController
@RequestMapping("/producto")
public class ProductoCtrl {
	
	//
	@Autowired
	ProductoRepository productoRepo;
	@Autowired
	TiendaService tiendaServ;

	@GetMapping
	List<Producto> allProductos() {
		return (List<Producto>) productoRepo.findAll();
	}

	@PostMapping
	Producto crear(@RequestBody Producto producto) {
		
		tiendaServ.agregarCategoria(producto, producto.getCategoria().getId());
		return productoRepo.save(producto);
	}

	@PutMapping
	Producto actualizar(@RequestBody Producto producto) {
		return productoRepo.save(producto);

	}
	

}
