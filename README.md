# Prueba Dockerfile

**Por favor: Correr con el comando ** 

Este es un readme que va a incluir la informacion sobre configuracion de ubuntu, angular y nginx

* Para comenzar debemos tener ubunto como base en nuestro dockerfile como se siguio en la siguiente pagina https://medium.com/@dassandrew3/make-your-own-dockerfile-to-run-an-ubuntu-container-015c58beb869

* Una vez realizado que se tiene ubunto como base del dockerfile, debemos isntalar lo necesario y qye se pide en la guia
* **Instala nginx como servidor web.**
* **Instala Node.js y npm para gestionar y ejecutar la aplicación Angular.**
* **Utiliza npm para instalar Angular CLI globalmente dentro de la imagen.**

![image](https://github.com/Anthonazo/pruebaDockerfile/assets/118082256/cb70c49b-0cd7-4859-835b-09f8ecd0d74f)

Como se puede ver se instalo directamente sobre la imagen el servidor nginx, nodejs, npm, y angular con sus respectivos comandos para ubuntu y asi se tendria el paquete base

* Como siguiente paso se importaron los parquetes necesarios para angular que es node:alphine y se creo una carpeta raiz en el contenedor, una vez hecho esto construimos la aplicacion angular

![image](https://github.com/Anthonazo/pruebaDockerfile/assets/118082256/e48b5262-ff8f-4d52-ac7c-ffe093688303)

 * Finalmente su resultado lo copiamos en el archivo por defecto de nginx

![image](https://github.com/Anthonazo/pruebaDockerfile/assets/118082256/9f115632-83aa-4189-a029-031c9114c5cb)
