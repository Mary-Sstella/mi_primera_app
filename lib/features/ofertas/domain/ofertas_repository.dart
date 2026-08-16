import 'package:mi_primera_app/features/ofertas/domain/oferta.dart';

abstract interface class OfertasRepository {
  //furure es una promesa de que se obtendrá un valor en el futuro, en este caso una lista de ofertas.
  Future<List<Oferta>> obtenerTodas();

  Future<Oferta?> obtenerPorId(String id);

  Future<List<Oferta>>
  obtenerDisponibles(); //devuelve una lista de ofertas disponibles
}
