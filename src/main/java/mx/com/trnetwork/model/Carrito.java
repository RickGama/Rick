package mx.com.trnetwork.model;

import java.util.HashMap;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Carrito {

	@Autowired
	protected HttpSession httpSession;
	HashMap<String, Integer> productos;

	public void add(String producto) {
		Integer cantidad;

		productos = getProductos();

		if (!productos.containsKey(producto)) {
			cantidad = 0;
		} else
		{
			cantidad = productos.get(producto);
			
		}
		productos.put(producto, cantidad + 1);
		System.out.println(" esto es" + producto);

	}

	public void remove(String producto) {
		if (productos.containsKey(producto)) {

			Integer cantidad = productos.get(producto);
			productos.put(producto, cantidad - 1);

			if (productos.get(producto) <= 0)
				productos.remove(producto);
		}
	}

	public HashMap<String, Integer> getProductos() {
		productos = (HashMap<String, Integer>) httpSession.getAttribute("productos");

		if (productos == null) {
			productos = new HashMap<String, Integer>();
			httpSession.setAttribute("productos", productos);
		}
		return productos;
	}

}
