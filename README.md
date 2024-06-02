# TFG Ricardo Garcia Romera DAM 22/24

Este repositorio incluye:
- **Servidor (Spring Boot Java):** aparte del submódulo también podemos acceder a traves del siguiente [enlace](https://github.com/Zetille03/TFG_Server.git).
- **Aplicacion Movil (Android Studio/Jetpack Compose):** aparte del submódulo también podemos acceder a traves del siguiente [enlace](https://github.com/Zetille03/TFG_ClienteApp.git)
- **Documentacion**:
  - Informacion General Proyecto
  - Tecnologías usadas
  - Esquema UML
  - Diagrama E/R.
  - Manual de usuario.
- **Scrip SQL:** ***sqldataprueba.sql*** para la creacion del esquema, las tablas y unos datos de prueba. Todos los usuarios que se insertan tienen **password** '12345678'. Nos necesario ejecutar este script, con solo lanzar el servidor y tener el schema que nos aparece en el archivo "***application.properties***". spring.datasource.url=jdbc:mysql://127.0.0.1:3306/marketonubaprueba. Spring Boot esta configurado para crear las tablas en el caso de que no existan todavia.

Aparte podeis acceder a la funcionalidad del swagger al lanzar el servidor e insertar esta URL en el navegador: http://localhost:8080/swagger-ui/index.html#/
