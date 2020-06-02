package mx.com.trnetwork.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mx.com.trnetwork.model.Carrito;

@Controller
@RequestMapping("/tienda")
public class Controller1 {

	@Autowired
	Carrito carrito;

	@RequestMapping("")
	public String productos(Model miModelo) {
		miModelo.addAttribute("carrito", carrito);
		return "store";
	}

	@RequestMapping(value = "/agregar-carrito", method = RequestMethod.POST)
	public String addToCarr(@RequestParam(name = "producto", required = true) String producto, Model miModelo) {
		carrito.add(producto);
		miModelo.addAttribute("carrito", carrito);
		System.out.println(producto);
		return "store";

	}

	@RequestMapping(value = "/vaciar-carrito", method = RequestMethod.POST)
	public String removeToCarr(@RequestParam(name = "producto", required = true) String producto, Model miModelo) {
		carrito.remove(producto);
		miModelo.addAttribute("carrito", carrito);
		return "store";
	}

}
