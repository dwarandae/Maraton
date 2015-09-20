# Maratón
Repositorio para explicar Spring/Struts/Hibernate en NetBeans usando Maven y GlassFish. 

##Acerca de.
¡Hola! Este repositorio contiene un proyecto básico de inscripción a maratones de programación hecho en Java usando la
típica combinación de frameworks de JavaEE Struts/Spring/Hibernate para las capas de presentación/lógica/datos respectivamente.

##Instrucciones de configuración
1. Clone el proyecto usando el comando `git clone https://github.com/dwarandae/Maraton.git`. en la carpeta de proyectos de Netbeans
2. Abra el proyecto en NetBeans. Una vez abierto, el IDE identificará el proyecto como Maven y procederá a descargar las dependencias
adecuadas. Es importante tener instalado Java 7+ y que la variable `JAVA_HOME` esté configurada adecuadamente. Muy seguramente ya esto ocurre ;)
3. El proyecto está montado sobre una base de datos MySQL, por lo que es necesario tener el servidor [instalado](https://dev.mysql.com/downloads/installer/) en su SO.
Una vez realizado esto cree una base de datos con nombre `maraton`
4. Construya el proyecto e inícielo. Si todo sale bien, vaya al paso 6.
5. Si está leyendo esto es porque un error ocurrió al desplegar el proyecto. Este proyecto se ha portado a GlassFish 4.1
y el error que probablemente genere es que un `NotSuchMethodException` debido a que no encuentra en una librería de JBoss Logging
un método adecuado para hacer log en la consola. Si así es [descargue](http://mvnrepository.com/artifact/org.jboss.logging/jboss-logging/3.3.0.Final) la versión 3.3.0.Final
de JBoss Logging y renombre el archivo a jboss-logging.jar. A continuación copie el archivo a la carpeta glassfish/modules en la carpeta donde
se instaló su versión de GlassFish (para Linux normalmente es el home, para Windows normalmente es la ruta donde se descargó NetBeans)
Si el error es distinto a este (y no debería :@) revise que la base de datos maraton se haya creado y que haya conexión o que todas las dependencias hayan sido descargadas.
6. Juegue con el proyecto, revise la funcionalidad (de cara al cliente) y compare con el código fuente.
7. Es ideal (aunque no necesario) que clone sólamente el primer commit de este repositorio (¡Batman!) para que tenga
un panorama de cuál era el estado del proyecto antes de todas las modificaciones.
8. Revise el historial de commits para que tenga una idea de cómo implementar un requisito funcional usando estos frameworks.
9. ¿Dudas adicionales? Escríbame ;)
