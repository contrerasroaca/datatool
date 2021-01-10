<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
function Crear() {
      var url = "http://localhost:8080/RestPro/services/Empresas";
    $.ajax({
        url: url+"/CrearEmpresa",
        type: "Post",
        contentType: "application/json",
        data: JSON.stringify(
        { 
        	tipoDocumento: $("input[name='tipodoc']").val(),
        	representanteLegal: $("input[name='representantelegal']").val(),
        	numeroIdentificacion: $("input[name='identificacion']").val(),
        	nombre: $("input[name='nombre']").val(),
        	direccion: $("input[name='direccion']").val(),
        	telefono: $("input[name='telefono']").val(),
        	ciudad: $("input[name='ciudad']").val(),
        	departamanto: $("input[name='departamento']").val(),
        	pais: $("input[name='pais']").val(),
        }),
        success: function (resultado) {
        	var titulo='Buen trabajo';
        	var icono='success';
        	if(resultado.status){
        		 $.ajax({        		        
        		        url: url+"/ConsultarEmpresa",
        		        type: 'get',       		        
        		        success: function (response) {//resultado de la función
        		        $(response).each(function( index,item ) {	
        		        		$('#cuerpo tbody').append(`<tr><td>${item.tipoDocumento}</td><td>${item.representanteLegal}</td><td>${item.numeroIdentificacion}</td><td>${item.nombre}</td><td>${item.direccion}</td><td>${item.telefono}</td><td>${item.ciudad}</td><td>${item.departamanto}</td><td>${item.pais}</td></tr>`);
        		        	});
        		        }
        		    });
        	}else{
        		titulo='Debes Verificar';
        		icono='error';
        	}
        	swal({
        		  title: titulo,
        		  text: resultado.mensaje,
        		  icon: icono,
        	});
        	
        }
           
        
    });
}
</script>
	<div class="card card-outline-secondary">
		<div class="card-header">
			<h3 class="mb-0">
				Registro Empresa
			</h3>
		</div>
		<div class="card-body">
			<form autocomplete="off" class="form" role="form">
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Tipo
						Documento</label>
					<div class="col-lg-9">
						<input class="form-control" type="number" min="0" value=""
							name="tipodoc">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Representate
						Legal</label>
					<div class="col-lg-9">
						<input class="form-control" type="number" min="0" value=""
							name="representantelegal">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Identificacion</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" value=""
							name="identificacion">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Nombre</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" value="" name="nombre">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Dirección</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name="direccion" value="">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Telefono</label>
					<div class="col-lg-9">
						<input class="form-control" type="tel" name="telefono" value="">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Ciudad</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name="ciudad" value="">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Departamento</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name="departamento"
							value="">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label">Pais</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name="pais" value="">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 col-form-label form-control-label"></label>
					<div class="col-lg-9">
						<input class="btn btn-secondary" type="reset" value="Cancelar">
						<input class="btn btn-primary" onclick="Crear()" type="button"
							value="Guardar">
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="card card-outline-secondary">
		<div class="card-header">
			<h3 class="mb-0">Listado de Empresas</h3>
		</div>
		<div class="card-body">
			<table class="table table-striped table-compact" id="cuerpo">
				<thead>
					<tr>
						<th>Tipo Documento</th>
						<th>Representate Legal</th>
						<th>Identificacion</th>
						<th>Nombre</th>
						<th>Dirección</th>
						<th>Telefono</th>
						<th>Ciudad</th>
						<th>Departamento</th>
						<th>Pais</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
		</div>
	</div>
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script type="text/javascript">

</script>
</body>
</html>