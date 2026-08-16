import 'package:mi_primera_app/core/json.dart';

/// Representa la ubicación de una oferta.
///
/// Es un objeto de valor: dos ubicaciones con la misma
/// latitud, longitud y barrio se consideran iguales.
// la misma ubicación, así que no lleva `id` y se compara por contenido.

class Ubicacion {
  const Ubicacion({
    required this.latitud,
    required this.longitud,
    required this.barrio,
  });

  factory Ubicacion.fromJson(Map<String, dynamic> json) => Ubicacion(
    latitud: leerDecimal(json, 'latitud'),
    longitud: leerDecimal(json, 'longitud'),
    barrio: leerTexto(json, 'barrio'),
  );
  //datos que tendran una ubicacion
  final double latitud;
  final double longitud;
  final String barrio;

  Map<String, dynamic> toJson() => {
    'latitud': latitud,
    'longitud': longitud,
    'barrio': barrio,
  };
  //Comprueba si dos ubicaciones tienen los mismos datos
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ubicacion &&
          other.latitud == latitud &&
          other.longitud == longitud &&
          other.barrio == barrio;
  //Genera el código hash usando esos mismos datos
  @override
  int get hashCode => Object.hash(latitud, longitud, barrio);

  @override
  String toString() => 'Ubicacion($barrio, $latitud, $longitud)';
}
