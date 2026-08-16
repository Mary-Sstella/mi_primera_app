import 'package:mi_primera_app/features/ofertas/domain/oferta.dart';

abstract interface class OfertasRepository {
  Future<List<Oferta>> obtenerTodas();

  Future<Oferta?> obtenerPorId(String id);

  Future<List<Oferta>>
  obtenerDisponibles(); //devuelve una lista de ofertas disponibles
}
