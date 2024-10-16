// Mixin Nadador con el método nadar()
mixin Nadador {
  void nadar() {
    print("Estoy nadando.");
  }
}

// Clase abstracta Animal
abstract class Animal {
  String nombre;

  Animal(this.nombre);

  void hacerSonido();
}

// Clase Delfin que extiende de Animal y usa el mixin Nadador
class Delfin extends Animal with Nadador {
  Delfin(String nombre) : super(nombre);

  // Implementación del método hacerSonido()
  @override
  void hacerSonido() {
    print("$nombre hace un sonido característico de delfín.");
  }

  // Factory constructor
  factory Delfin.crear(String nombre) {
    return Delfin(nombre);
  }
}

void main() {
  // Crear un delfín usando el factory constructor
  var delfin = Delfin.crear("Delfy");

  // Llamar a los métodos de la clase
  delfin.hacerSonido();
  delfin.nadar();
}
