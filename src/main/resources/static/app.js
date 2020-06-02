angular.module('TiendaApp', [])


.controller('TiendaCtrl', function($http) {
	var ctrl = this;
	ctrl.newProducto = {};
	ctrl.newCategoria = {};

	ctrl.listProductos = function() {
		
		var req = {
			method : 'GET',
			url : '/producto',
			headers : {
				'Content-Type' : 'application/json'
			},
		}
		$http(req).then(function(result) {
			// console.log(result.data);
			ctrl.productos = result.data
		}, function() {

		});
	};

	ctrl.addProducto = function(producto) {
		var req = {
			method : 'POST',
			url : '/producto',
			headers : {
				'Content-Type' : 'application/json'
			},
			data : producto
		}
		$http(req).then(function() {
			ctrl.listProductos();
			ctrl.newProducto = {};
		}, function() {

		});
	};

	// ////////////////////
	ctrl.listCategorias = function() {
		var req = {
			method : 'GET',
			url : '/categoria',
			headers : {
				'Content-Type' : 'application/json'
			},
		}
		$http(req).then(function(result) {
			// console.log(result.data);
			ctrl.categorias = result.data
		}, function() {

		});
	};

	ctrl.addCategoria = function(categoria) {
		var req = {
			method : 'POST',
			url : '/categoria',
			headers : {
				'Content-Type' : 'application/json'
			},
			data : categoria
		}
		$http(req).then(function() {
			ctrl.listCategorias();
			ctrl.newCategoria = {};

		}, function() {

		});
	};

});