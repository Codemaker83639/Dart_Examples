class Persona {
  String nombre;
  int edad;

  // Constructor nombrado
  Persona({required this.nombre, required this.edad});

  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Edad: $edad años');
  }
}

class Empleado extends Persona {
  String cargo;

  // Constructor nombrado de Empleado
  Empleado({required String nombre, required int edad, required this.cargo})
      : super(nombre: nombre, edad: edad);

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Cargo: $cargo');
  }
}

void main() {
  // Creando un objeto de la clase Empleado
  Empleado empleado1 =
      Empleado(nombre: 'Ana', edad: 25, cargo: 'Desarrolladora');

  // Mostrando los detalles del empleado
  empleado1.mostrarDetalles();
}
