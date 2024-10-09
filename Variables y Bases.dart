import 'dart:math';

void main() {
  // Variables y tipos de datos
  int edad = 30;
  double altura = 1.75;
  String nombre = 'Juan';
  bool esEstudiante = false;

  // Listas
  List<int> numeros = [1, 2, 3, 4, 5];
  List<String> frutas = ['manzana', 'banana', 'pera'];

  // Mapas
  Map<String, String> capitales = {
    'España': 'Madrid',
    'Francia': 'París',
  };

  // Funciones
  int sumar(int a, int b) => a + b;
  String saludar(String nombre) => 'Hola, $nombre!';

  // Condicionales
  if (edad >= 18) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }

  // Bucles
  for (int i = 0; i < 5; i++) {
    print('Iteración $i');
  }

  // Crear un objeto de la clase Persona
  Persona persona1 = Persona('Ana', 25);
  persona1.saludar();

  // Funciones asíncronas
  Future<void> obtenerDatos() async {
    // Simulación de una petición a una API
    await Future.delayed(Duration(seconds: 2));
    print('Datos obtenidos');
  }

  obtenerDatos();

  // Manejo de errores
  try {
    int resultado = 10 ~/ 0; // División entre cero
  } catch (e) {
    print('Error: $e');
  }

  // Generadores
  Iterable<int> numerosPares(int limite) sync* {
    for (int i = 0; i <= limite; i += 2) {
      yield i;
    }
  }

  for (int numero in numerosPares(10)) {
    print(numero);
  }
}

// Clase Persona movida fuera de main
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void saludar() {
    print('Hola, soy $nombre y tengo $edad años.');
  }
}
