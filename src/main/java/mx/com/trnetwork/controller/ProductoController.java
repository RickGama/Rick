package mx.com.trnetwork.controller;


import java.io.IOException;
import java.util.List;
import java.util.function.Consumer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;
import mx.com.trnetwork.service.TiendaService;

@Controller
@RequestMapping(value = { "/tienda" })
public class ProductoController {

	@Autowired
	private ProductoRepository productoRepository;

	@RequestMapping(value = { "/productos" })
	public String listar(Model m) {

		Iterable<Producto> productos = productoRepository.findAll();
		productos.forEach(new Consumer<Producto>() {

			@Override
			public void accept(Producto p) {
				System.out.println(p);

			}
		});

		m.addAttribute("productos", productos);

		return "list-productos";
	}

	@GetMapping("/productos/add")
	public String agregar(Model m) {
		return "add-product";
	}

	@GetMapping("/productos/remove")
	public String remover(Model m) {
		return "remove-product";
	}
	@GetMapping("/productos/update")
	public String actualizar(Model m) {
		return "update-product";
	}

	@PostMapping("/productos/add")
	public ModelAndView guardar(@RequestParam(name = "name") String name, float precio, String descripcion, String imagen)
			throws IllegalStateException, IOException {

		Producto newProducto = new Producto();

		newProducto.setName(name);
		newProducto.setPrecio(precio);
		newProducto.setDescripcion(descripcion);
		newProducto.setImagen(imagen);

		productoRepository.save(newProducto);

		return new ModelAndView("redirect:/tienda/productos");
	}

	@PostMapping("/productos/remove")
	public ModelAndView eliminar(@RequestParam(name = "id") Long id) {

		Producto newProducto = new Producto();
		newProducto.setId(id);

		productoRepository.delete(newProducto);

		return new ModelAndView("redirect:/tienda/productos");
	}
	
	@PostMapping("/productos/update")
	public ModelAndView actualizar(@RequestParam(name = "id") Long id, String name, float precio,String descripcion, String imagen){

		Producto newProducto = new Producto();

		newProducto.setId(id);
		newProducto.setName(name);
		newProducto.setPrecio(precio);
		newProducto.setDescripcion(descripcion);
		newProducto.setImagen(imagen);

		productoRepository.save(newProducto);

		return new ModelAndView("redirect:/tienda/productos");
	}

	@RequestMapping(value = "/productos/borrar", method = RequestMethod.POST)
	public ModelAndView eliminarProducto(@RequestParam(name = "id", required = true) Long id, Model miModelo) {

		productoRepository.deleteById(id);
		
		return new ModelAndView("redirect:/tienda/productos");
	}
	@RequestMapping(value = "/productos/actualizar", method = RequestMethod.POST)
	public ModelAndView actualiarProducto(@RequestParam(name = "id", required = true) Long id, Model miModelo) {
			
		//System.out.println(productoRepository.findById(id));

		Producto pr = new Producto();
		
         System.out.println(pr.getId());
 
		
		return new ModelAndView("redirect:/tienda/productos");
	}
	
	
	

}
