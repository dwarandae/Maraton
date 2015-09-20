<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/Maraton/scripts/css/datepicker3.css">
<script type="text/javascript" src="/Maraton/scripts/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/Maraton/scripts/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="/Maraton/scripts/js/bootstrap-datepicker-es.js"></script>

<script type="text/javascript">
	$(function(){$("#fechaInicio").datepicker({format: "dd/mm/yy",language: 'es'})});
	$(function(){$("#fechaFin").datepicker({format: "dd/mm/yy",language: 'es'})});
	$(function(){$("#fecha").datepicker({format: "dd/mm/yy",language: 'es'})});
</script>
<title>Crear maratón</title>
</head>
<body>
	<nav id="myNavbar"
		class="navbar navbar-default navbar-inverse navbar-fixed-top"
		role="navigation">

		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="sr-only">Navegación</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Maratones de programación.</a>
			</div>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="nav navbar-nav">
					<li><a href="<s:url namespace='/admin' action='index'/>">Inicio</a></li>
					<li class="active"><a
						href="<s:url namespace='/maraton' action='create'/>">Crear
							maratón</a></li>
					<li><a
						href="<s:url namespace='/admin' action='listMaraton'/>">Administrar maratones</a></li>
					<li><a
						href="<s:url namespace='/inscrito' action='list'/>">Administrar inscritos</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container-fluid">
			<h1>Nueva maratón</h1>
			<br>
			<br>
			<br>
			<div class="col-xs-1">
	        </div>
	        <div class="col-xs-10">
			<form action="maraton/maraton/createMaraton.action" class="form-horizontal" method="post">
				<div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Nombre</label>
					<div class="col-sm-10">
					<s:textfield name="maraton.nombre" id="nombreMaraton" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="fecha_inicio" class="col-sm-2 control-label">Inicio de inscripciones</label>
					<div class="col-sm-10">
					<s:textfield name="maraton.fechaInicio" id="fechaInicio" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="fecha_fin" class="col-sm-2 control-label">Fin de inscripciones</label>
					<div class="col-sm-10">
					<s:textfield name="maraton.fechaFin" id="fechaFin" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="fecha" class="col-sm-2 control-label">Fecha de realización</label>
					<div class="col-sm-10">
					<s:textfield name="maraton.fecha" id="fecha" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="lenguaje" class="col-sm-2 control-label">Lenguaje</label>
					<div class="col-sm-10">
					<s:select name="maraton.lenguaje" list="# {'Java':'Java','C++':'C++','C':'C','Python':'Python'}" cssClass="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<s:submit value="Crear maratón" cssClass="btn btn-default"/>
					</div>
				</div>
			</form>
			</div>
			<div class="col-xs-1">
	        </div>
		</div>
	</div>
</body>
</html>