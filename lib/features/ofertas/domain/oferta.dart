import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mi_primera_app/core/json.dart';
import 'package:mi_primera_app/features/ofertas/domain/estado_oferta.dart';
import 'package:mi_primera_app/features/ofertas/domain/ubicacion.dart';

part 'oferta.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Oferta with _$Oferta {
  const factory Oferta({
    required String id,
    required String titulo,
    required String descripcion,
    required double precioOriginal,
    required double precioOferta,
    required String negocio,
    required Ubicacion ubicacion,
    required DateTime creadoEn,
    required EstadoOferta estado,
    @Default(<String>[]) List<String> fotos,
  }) = _Oferta;

  const Oferta._();

  // JSON escrito a mano para conservar nuestros CampoInvalido.
  factory Oferta.fromJson(Map<String, dynamic> json) => Oferta(
    id: leerTexto(json, 'id'),
    titulo: leerTexto(json, 'titulo'),
    descripcion: leerTexto(json, 'descripcion'),
    precioOriginal: leerDecimal(json, 'precioOriginal'),
    precioOferta: leerDecimal(json, 'precioOferta'),
    negocio: leerTexto(json, 'negocio'),
    ubicacion: Ubicacion.fromJson(leerMapa(json, 'ubicacion')),
    creadoEn: leerFecha(json, 'creadoEn'),
    estado: EstadoOferta.fromJson(leerMapa(json, 'estado')),
    fotos: leerTextos(json, 'fotos'),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'titulo': titulo,
    'descripcion': descripcion,
    'precioOriginal': precioOriginal,
    'precioOferta': precioOferta,
    'negocio': negocio,
    'ubicacion': ubicacion.toJson(),
    'creadoEn': creadoEn.toUtc().toIso8601String(),
    'estado': estado.toJson(),
    'fotos': fotos,
  };

  bool get tieneDescuento => precioOferta < precioOriginal;

  bool estaVencida(DateTime ahora) {
    if (estado is Disponible) {
      final disponible = estado as Disponible;

      return ahora.isAfter(disponible.fechaLimite);
    }

    return false;
  }
}
