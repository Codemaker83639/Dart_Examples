class Persona {
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Método para mostrar los detalles
  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Edad: $edad años');
  }
}

void main() {
  // Creando una instancia de la clase Persona
  Persona persona1 = Persona('Juan', 30);

  // Imprimiendo los valores directamente (aunque no es recomendado)
  // print(persona1.nombre);
  // print(persona1.edad);

  // Usando el método para mostrar los detalles
  persona1.mostrarDetalles();
}
