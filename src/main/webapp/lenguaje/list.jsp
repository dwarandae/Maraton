<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Listado de lenguajes.</title>
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
                    <a class="navbar-brand" href="#">Listado de lenguajes.</a>
                </div>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<s:url namespace='/admin' action='index'/>">Inicio</a></li>
                        <li><a
                                href="<s:url namespace='/lenguaje' action='create'/>">Crear
                                lenguaje</a></li>
                        <li class="active"><a
                                href="<s:url namespace='/lenguaje' action='list'/>">Administrar lenguajes</a></li>
                        <li><a
                                href="<s:url namespace='/maraton' action='create'/>">Crear maratón</a></li>
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
                <h1>Inscripciones</h1>
                <p></p>
                <p></p>
                <p>Lenguajes en el sistema:</p>
            </div>
            <div class="container-fluid">
                <table class="table table-striped">
                    <tr>
                        <th class="text-center">Id</th>
                        <th class="text-center">Nombre del lenguaje</th>
                        <th class="text-center">Versión del lenguaje usada</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                    <s:iterator value="%{lenguajes}" id="lenguaje">
                        <tr class="text-center">
                            <td><a href=""><s:property value="#lenguaje.lenguajeId"/></a></td>
                            <td><s:property value="#lenguaje.nombre"/></td>
                            <td><s:property value="#lenguaje.version"/></td>
                            <td><s:url id="editar" namespace='/lenguaje' action='edit'><s:param name="lenguaje.lenguajeId" value="%{#lenguaje.lenguajeId}"></s:param></s:url>
                                <s:a href="%{editar}"><button type="button" class="btn btn-primary">Editar</button></s:a>
                                <s:url id="eliminar" namespace='/lenguaje' action='delete'><s:param name="lenguaje.lenguajeId" value="%{#lenguaje.lenguajeId}"></s:param></s:url>
                                <s:a href="%{eliminar}"><button type="button" class="btn btn-danger">Eliminar</button></s:a>
                                <s:url id="verMaratones" namespace='/maraton' action='listByLenguaje'><s:param name="lenguaje.lenguajeId" value="%{#lenguaje.lenguajeId}"></s:param></s:url>
                                <s:a href="%{verMaratones}"><button type="button" class="btn btn-info">Maratones en este lenguaje</button></s:a>
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
