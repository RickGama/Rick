package mx.com.trnetwork.restController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;

@RestController
public class Rest {
	
	@Autowired
	ProductoRepository pr;
	
	@RequestMapping("/ajax/search-product")
	public ResponseEntity<?> buscarProductos(@RequestParam(name = "q")String q){
		
		List<Producto> productoEncontrado = pr.findByNameContainingIgnoreCase(q);
		
		return new ResponseEntity<List<Producto>>(productoEncontrado, HttpStatus.OK);
	}

}
