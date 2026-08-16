bool listasIguales<T>(List<T> a, List<T> b) {
  if (identical(a, b)) return true;

  if (a.length != b.length) {
    return false;
  } //si la listas tienen diferente tamaño, no son iguales

  for (var i = 0; i < a.length; i++) {
    // recorre la lista y compara elemento por elemento
    if (a[i] != b[i]) return false;
  }

  return true;
}
