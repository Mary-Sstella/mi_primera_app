import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_primera_app/core/json.dart';
import 'package:mi_primera_app/features/ofertas/data/ofertas_locales.dart';

const _json = '''
[
  {
    "id": "ofer-001",
    "titulo": "Pack de frutas mixtas",
    "descripcion": "Frutas variadas para consumo inmediato.",
    "precioOriginal": 12000,
    "precioOferta": 7000,
    "negocio": "Mi futuro",
    "ubicacion": {
      "latitud": 10.4631,
      "longitud": -73.2532,
      "barrio": "Centro"
    },
    "creadoEn": "2026-08-12T19:00:00Z",
    "estado": {
      "tipo": "disponible",
      "cantidadDisponible": 5,
      "fechaLimite": "2026-08-13T22:00:00Z"
    },
    "fotos": []
  }
]
''';

void main() {
  test('lee la lista completa del archivo', () async {
    final repo = OfertasLocales(lector: (_) async => _json);

    final ofertas = await repo.obtenerTodas();

    expect(ofertas.length, 1);
    expect(ofertas.first.titulo, 'Pack de frutas mixtas');
  });

  test('busca por id y devuelve null cuando no está', () async {
    final repo = OfertasLocales(lector: (_) async => _json);

    expect(
      (await repo.obtenerPorId('ofer-001'))?.titulo,
      'Pack de frutas mixtas',
    );

    expect(await repo.obtenerPorId('no-existe'), isNull);
  });

  test('un archivo que no es una lista se rechaza', () async {
    final repo = OfertasLocales(lector: (_) async => '{"a": 1}');

    expect(repo.obtenerTodas(), throwsA(isA<CampoInvalido>()));
  });

  test(
    'el asset declarado en pubspec existe y el modelo lo entiende',
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();

      final repo = OfertasLocales(lector: rootBundle.loadString);

      final ofertas = await repo.obtenerTodas();

      expect(ofertas.length, greaterThanOrEqualTo(1));
    },
  );

  test('obtiene solamente las ofertas disponibles', () async {
    final repo = OfertasLocales(lector: (_) async => _json);

    final ofertas = await repo.obtenerDisponibles();

    expect(ofertas.length, 1);
    expect(ofertas.first.estado.runtimeType.toString(), 'Disponible');
  });
}
