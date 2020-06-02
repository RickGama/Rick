<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>

<script src="/app.js"></script>
<link rel="stylesheet" href="/app.css">

</head>
<body ng-app="TiendaApp">
	<div ng-controller="TiendaCtrl as ctrl">
		<button ng-click="ctrl.listCategorias()">GetTeams</button>
		<table class="table table-striped table-secondary">
			<thead>
				<tr>
					<th>Name</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="categoria in ctrl.categorias">
					<td>{{team.name}}</td>
				</tr>
				<tr>
					<td>
						<div class="input-group mb-3">
							<input type="text" class="form-control" ng-model="ctrl.newCategoria.name"
								placeholder="Nombre Producto">
							<div class="input-group-append">
								<button ng-click="ctrl.addCategoria(ctrl.newCategoria)"
									class="btn btn-outline-secondary" type="button">Agregar
									Equipo</button>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<hr />
		<button ng-click="ctrl.listProductos()">GetProductos</button>
		<table class="table table-striped table-primary">
			<thead>
				<tr>
					<th>Name</th>
					<th>Precio</th>
					<th>Caracteristica</th>
					<th>Categoria</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="player in ctrl.players">
					<td>{{producto.name}}</td>
					<td>{{producto.precio}}</td>
					<td>{{producto.caracteristica}}</td>
					<td>{{producto.categoria.nombre}}</td>
				</tr>
				<tr>
					<td><input type="text" class="form-control"
						ng-model="ctrl.newProducto.name" placeholder="Nombre"></td>
					<td><input type="precio" class="form-control"
						ng-model="ctrl.newProducto.precio" placeholder="Precio"></td>
					<td><input type="text" class="form-control"
						ng-model="ctrl.newPlayer.caracteristica" placeholder="Caracteristica"></td>
					<td>
						<!-- 					documentacion de ng-options en https://docs.angularjs.org/api/ng/directive/ngOptions -->
						<div class="input-group">

							<select class="form-control"
								ng-options="categoria.id as categoria.nombre for categoria in ctrl.categorias track by categoria.id"
								ng-model="ctrl.newProducto.categoria.id"></select>

							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button"
									ng-click="ctrl.addProducto(ctrl.newProducto)">Agregar producto</button>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>