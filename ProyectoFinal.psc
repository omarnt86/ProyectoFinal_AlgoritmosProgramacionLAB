// Funcion para agregar productos
Funcion crearProducto (producto, cantidad, precio, cantidadProducto)
	Para i = 0 Hasta cantidadProducto - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del producto No. ", (i+1), " a agregar:"
		Leer producto(i)
		Escribir "Indique la cantidad a agregar:"
		Leer cantidad(i)
		Escribir "Indique el precio del producto:"
		Leer precio(i)
		Escribir ""
	FinPara
FinFuncion

//Funcion para mostrar productos
Funcion mostrarProducto (producto, cantidad, precio, cantidadProducto)
	Para i = 0 Hasta cantidadProducto - 1 Con Paso 1 Hacer
		Escribir "Producto No. ", (i+1), ": ", producto(i)
		Escribir "Cantidad producto No. ", (i+1), ": ", cantidad(i)
		Escribir "Precio del producto No. ", (i+1), ": RD$", precio(i)
		Escribir ""
	FinPara
FinFuncion

//Funcion para modificar producto
Funcion modificarProducto (producto, cantidad, precio, num)
	Escribir "Colocar nuevo nombre del producto:"
	Leer producto(num)
	Escribir "Colocar nueva cantidad del producto:"
	Leer cantidad(num)
	Escribir "Colocar nuevo precio del producto:"
	Leer precio(num)
FinFuncion


//Funcion para eliminar producto
Funcion eliminarProducto (producto, cantidad, precio, num, cantidadProducto)
	Para i = num Hasta cantidadProducto - 1 Con Paso 1 Hacer
		producto(i) = producto (i + 1)
		precio(i) = precio (i + 1)
		cantidad(i) = cantidad (i + 1)
	FinPara
FinFuncion


// Menu Principal
Algoritmo MenuPrincipal
	
	//Arreglo para determinar dimensionamiento de variables
	Dimension producto(999)
	Dimension cantidad(999)
	Dimension precio(999)
	
	op = 0
	cantidadProducto = 0
	
	Repetir
		
		Escribir "**** Nunez Soluciones de Software ****"
		Escribir "1. Agregar producto"
		Escribir "2. Mostrar inventario"
		Escribir "3. Actualizar informacion de producto"
		Escribir "4. Eliminar producto"
		Escribir "5. Salir"
		
		Leer op
		
		Segun op Hacer
			1:
				//Creacion de producto
				Escribir "Indique cuantos productos desea agregar:"
				Leer cantidadProducto
				crearProducto(producto, cantidad, precio, cantidadProducto)
				Escribir "Registro creado!"
				Escribir ""
				Escribir "Presione cualquier tecla para continuar"
				Esperar Tecla
			2:
				//Mostrar productos registrados
				mostrarProducto(producto, cantidad, precio, cantidadProducto)
				Escribir ""
				Escribir "Presione cualquier tecla para continuar"
				Esperar Tecla
			3:
				//Modificar producto
				mostrarProducto(producto, cantidad, precio, cantidadProducto)
				Escribir "Indique el numero del producto que desea modificar:"
				Leer num
				num = num - 1
				modificarProducto(producto, cantidad, precio, num)
				Escribir "Registro modificado!"
				Escribir ""
				Escribir "Presione cualquier tecla para continuar"
				Esperar Tecla
			4:
				//Eliminar producto
				mostrarProducto(producto, cantidad, precio, cantidadProducto)
				Escribir "Indique el numero del producto que desea eliminar:"
				Leer num
				num = num - 1
				eliminarProducto(producto, cantidad, precio, num, cantidadProducto)
				cantidadProducto = cantidadProducto - 1
				Escribir "Registro eliminado!"
				Escribir ""
				Escribir "Presione cualquier tecla para continuar"
				Esperar Tecla
		FinSegun
		
	Hasta Que op = 5
	
	
FinAlgoritmo
