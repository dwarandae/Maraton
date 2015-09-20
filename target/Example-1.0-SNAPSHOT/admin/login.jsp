<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Iniciar sesión</title>
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/Maraton/bootstrap/css/bootstrap-theme.min.css">
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
					<li><a href="<s:url namespace='/' action='index'/>">Inicio</a></li>
                    <li><a href="<s:url namespace='/maraton' action='list'/>">Ver maratones activas</a></li>
                    <li><a href="<s:url namespace='/inscrito' action='create'/>">Inscribirse</a></li>
                    <li class="active"><a href="<s:url namespace='/admin' action='login'/>">Panel de administración</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
	<div class="container">
		<!-- Nombres de usuario y contraseña hardcodeados, solo para implementar la funcionalidad.
		username=administrador
		password=admin -->
	  <div class="col-xs-3">
	  </div>
	  <div class="col-xs-6">
      <s:form action="authenticateUser" namespace="/admin" cssClass="form-signin">
        <h2 class="form-signin-heading">Iniciar sesión</h2>
        <label for="user" class="sr-only">Usuario</label>
        <input type="text" name="user" class="form-control" placeholder="Usuario" required autofocus>
        <label for="password" class="sr-only">Contraseña</label>
        <input type="password" name="password" class="form-control" placeholder="Contraseña" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me">Recordarme
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
      </s:form>
      </div>
      <div class="col-xs-3">
	  </div>
    </div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<footer>
					<p>2014. @dwarandae</p>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>