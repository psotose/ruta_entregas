App web que permite ingresar rutas y paradas mediante archivos json y visualizar la información.

*Tecnologías utilizadas: Ruby 2.6.4, Rails 5.2.4 y base de datos PostgreSQL*

## Consideraciones:

- La ruta no se guarda si alguno de los campos de las paradas no corresponde con los definidos o si sus valores son nulos o vacíos.
- El total de tiempo de cada ruta se calculo en base a las horas de llegada y salida contenidas en el archivo.
- Se utilizo la versión estática de GoogleMaps. Las paradas ingresadas deben tener coordenadas contenidas en la Región Metropolitana de Santiago de Chile.
- La app no es responsive.
- No se incluyo validaciones para el contenido de los campos del archivo (coordenadas, horas, etc), por lo que los archivos deben respetar el formato modelo.
```
  [{
	  "nid": "zoo",
	  "base": "-33.459522;-70.631662",
	  "llegada": "10:35",
	  "salida": "10:50",
	  "carga": 20,
	  "destino": "-33.416222;-70.594666"
  }]
```  
- El filtro implementado permite la búsqueda por el nombre de importación, nombre del archivo y base, ingresando desde un caracter en adelante.

- La app se encuentra desplegada en la siguiente ruta de [Heroku](https://ruta-entregas.herokuapp.com/) 

## Pasos para levantar el proyecto
```
git clone https://github.com/psotose/ruta_entregas.git
rails db:create
rails db:migrate
rails s
```
