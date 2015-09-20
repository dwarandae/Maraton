<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Listado de maratones.</title>
        <link rel="stylesheet" type="text/css"
              href="/Maraton/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css"
              href="/Maraton/bootstrap/css/bootstrap-theme.min.css">
    </head>
    <body>
        <nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
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
                        <li><a
                                href="<s:url namespace='/lenguaje' action='create'/>">Crear
                                lenguaje</a></li>
                        <li><a
                                href="<s:url namespace='/lenguaje' action='list'/>">Administrar lenguajes</a></li>
                        <li><a
                                href="<s:url namespace='/maraton' action='create'/>">Crear maratón</a></li>
                        <li><a
                                href="<s:url namespace='/admin' action='listMaraton'/>">Administrar maratones</a></li>
                        <li class="active"><a
                                href="<s:url namespace='/inscrito' action='list'/>">Administrar inscritos</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="jumbotron">
            <div class="container-fluid">
                <h1>Inscripciones</h1>
                <p></p>
                <p></p>
                <p>Inscripciones existentes en el sistema:</p>
            </div>
            <div class="container-fluid">
                <table class="table table-striped">
                    <tr>
                        <th class="text-center">Id</th>
                        <th class="text-center">Documento</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Dirección</th>
                        <th class="text-center">Teléfono</th>
                        <th class="text-center">Maratón inscrita</th>
                        <th class="text-center">Acciones</th>		
                    </tr>
                    <s:iterator value="%{inscritos}" id="inscrito">
                        <tr class="text-center">
                            <td><a href=""><s:property value="#inscrito.id"/></a></td>
                            <td><s:property value="#inscrito.documento"/></td>
                            <td><s:property value="#inscrito.nombre"/></td>
                            <td><s:property value="#inscrito.direccion"/></td>
                            <td><s:property value="#inscrito.telefono"/></td>
                            <td><s:property value="#inscrito.maraton.nombre"/></td>
                            <td><s:url id="editar" namespace='/inscrito' action='edit'><s:param name="inscrito.id" value="%{#inscrito.id}"></s:param></s:url>
                                <s:a href="%{editar}"><button type="button" class="btn btn-primary">Editar</button></s:a>
                                <s:url id="eliminar" namespace='/inscrito' action='delete'><s:param name="inscrito.id" value="%{#inscrito.id}"></s:param></s:url>
                                <s:a href="%{eliminar}"><button type="button" class="btn btn-info">Eliminar</button></s:a>
                            </tr>
                    </s:iterator>
                </table>
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