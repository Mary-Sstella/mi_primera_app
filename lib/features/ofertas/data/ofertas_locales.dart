//usado para leer el ofertas.json y convertirlo en una lista de ofertas

import 'dart:convert';

import 'package:flutter/services.dart'
    show
        rootBundle; //se usa para cargar archivos de recursos en Flutter, como archivos JSON, imágenes, etc.
import 'package:mi_primera_app/core/json.dart';
import 'package:mi_primera_app/features/ofertas/domain/estado_oferta.dart';
import 'package:mi_primera_app/features/ofertas/domain/oferta.dart';
import 'package:mi_primera_app/features/ofertas/domain/ofertas_repository.dart';

typedef LectorDeAssets = Future<String> Function(String ruta);

class OfertasLocales implements OfertasRepository {
  OfertasLocales({
    LectorDeAssets? lector,
    this.ruta = 'assets/data/ofertas.json',
  }) : _lector = lector ?? rootBundle.loadString;

  final LectorDeAssets _lector;
  final String ruta;

  List<Oferta>? _cache;

  @override
  Future<List<Oferta>> obtenerTodas() async {
    final guardado = _cache;

    if (guardado != null) {
      return guardado;
    }

    final crudo = await _lector(ruta);
    final decodificado = jsonDecode(crudo);

    if (decodificado is! List) {
      throw const CampoInvalido(
        '(raíz)',
        'el archivo debe contener una lista',
        null,
      );
    }

    return _cache = decodificado
        .map((e) => Oferta.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);
  }

  @override
  Future<Oferta?> obtenerPorId(String id) async {
    for (final oferta in await obtenerTodas()) {
      if (oferta.id == id) {
        return oferta;
      }
    }

    return null;
  }

  @override
  Future<List<Oferta>> obtenerDisponibles() async {
    final ofertas = await obtenerTodas();

    return ofertas
        .where((oferta) => oferta.estado is Disponible)
        .toList(growable: false);
  }
}
