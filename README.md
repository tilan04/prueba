<h1>Enviar un correo</h1>

<p>Este proyecto es para practicar, JSPs y JSTL. Hecho con
	Maven, HSQLDB, JavaMail, Twitter Bootstrap y JQuery</p>

<p>
Todo esto sería mucho más facil hacerlo con Spring pero para empezar es mejor conocer
como trabaja un Servlet.
	Es una tecnología que nos permite crear aplicaciones web interactivas (dinámicas), es decir, le permite al usuario interactuar con la aplicación (hacer consultas, insertar y eliminar datos, …)

<strong>Un Servlet</strong> es un objeto java que pertenece a una clase que extiende de javax.servlet.http.HttpServlet

Son pequeños programas escritos en Java que admiten peticiones a través del protocolo HTTP. Los servlets reciben peticiones desde un navegador web, las procesan y devuelven una respuesta al navegador, normalmente en HTML. Para realizar estas tareas podrán utilizar las clases incluidas en el lenguaje Java. Estos programas son los intermediarios entre el cliente (casi siempre navegador web) y los datos (BBDD)
¿Cómo funciona un contenedor de Servlets?

1. El navegador (cliente) pide una página al servidor HTTP que es un contenedor de Servlets.

2. El servlet procesa los argumentos de la petición, es decir, el contenedor de Servlets delega la petición a un Servlet en particular elegido de entre los Servlets que contiene.

3. El Servlet, que es una objeto java, se encarga de generar el texto de la página web que se entrega al contenedor.

4. El contenedor devuelve la página web al navegador (cliente) que la solicitó, normalmente en HTML.

Por lo tanto nos encontramos en una arquitectura Cliente-Servidor. Lo normal para esto es utilizar Apache Tomcat como contenedor de servlets. Recordar que apache es un servidor HTTP.
