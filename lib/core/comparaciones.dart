/// Compara dos listas elemento por elemento.
bool listasIguales<T>(List<T> a, List<T> b) {
  if (identical(a, b)) return true;

  if (a.length != b.length) {
    return false;
  } //si la listas tienen diferente tamaño, no son iguales

  for (var i = 0; i < a.length; i++) {
    // recorre la lista y compara elemento por elemento
    if (a[i] != b[i]) return false;
  } //se usa var para que el tipo se infiera automáticamente, en este caso es int

  return true;
}
