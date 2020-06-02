jQuery(document).ready(function($) {

	// clon
	$("#botonAjax").click(function() {
		var elClon = $("#plantilla").clone();
		elClon.attr('id', '');
		elClon.find("h1").text("nuevo titulo_R");
		elClon.show();
		// botonClon.show
		$("#carrito").append(elClon);
	});
	
	

	$("#busqueda").change(function() {
		$("#productos").empty();
		
		var url = "/ajax/search-product?q=" + $("#busqueda").val();
		$.ajax(url).done(function(data, textStatus, jqXHR) {
			console.log(data, textStatus, jqXHR);
			
			var productos = data;
			
			for ( var p in productos) {
				var prod = productos[p];
				console.log(prod);				
				var aClonar = $("#elementop").clone();
				aClonar.attr('id', '');				
				aClonar.find('#img').attr('src', prod.imagen);
				aClonar.find("#non").text(prod.name);
				aClonar.find("#precio").text(prod.precio);
				aClonar.find("#desc").text(prod.descripcion);
				aClonar.show();
				$("#productos").append(aClonar);
			
			
			}
		}).fail(function() {
			alert("Algo fallo");
		});

	});
});
