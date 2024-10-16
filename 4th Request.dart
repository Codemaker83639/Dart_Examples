enum DiaSemana { lunes, martes, miercoles, jueves, viernes, sabado, domingo }

extension EsPar on int {
  bool esPar() => this % 2 == 0;
}

void main() {
  int numero = 4; // Puedes cambiar este número
  print('El número $numero es ${numero.esPar() ? 'par' : 'impar'}.');
}
