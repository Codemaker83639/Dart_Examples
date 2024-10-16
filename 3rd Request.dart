abstract class Animal {
  String nombre;
  int edad;

  Animal(this.nombre, this.edad);

  void comer() {
    print('$nombre está comiendo.');
  }
}

class Perro extends Animal {
  Perro(String nombre, int edad) : super(nombre, edad) {
    assert(edad > 0, 'La edad de un perro debe ser mayor que 0');
  }
}

void main() {
  // Creando un objeto Perro
  var miPerro = Perro('Max', 3);
  miPerro.comer();

  // Intentando crear un perro con edad negativa (lanzará una excepción)
  // var perroInvalido = Perro('Fido', -2);
}
