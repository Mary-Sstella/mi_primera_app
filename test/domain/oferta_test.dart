import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mi_primera_app/core/json.dart';
import 'package:mi_primera_app/features/ofertas/domain/estado_oferta.dart';
import 'package:mi_primera_app/features/ofertas/domain/oferta.dart';
import 'package:mi_primera_app/features/ofertas/domain/ubicacion.dart';

Oferta ejemplo({EstadoOferta? estado, List<String>? fotos}) {
  return Oferta(
    id: 'ofer-001',
    titulo: 'Pack de frutas mixtas',
    descripcion: 'Frutas variadas para consumo inmediato.',
    precioOriginal: 12000,
    precioOferta: 7000,
    negocio: 'Mi futuro',
    ubicacion: const Ubicacion(
      latitud: 10.4631,
      longitud: -73.2532,
      barrio: 'Centro',
    ),
    creadoEn: DateTime.utc(2026, 8, 12, 19, 0),
    estado:
        estado ??
        Disponible(
          cantidadDisponible: 5,
          fechaLimite: DateTime.utc(2026, 8, 13, 22, 0),
        ),
    fotos: fotos ?? const <String>[],
  );
}

void main() {
  //la serialización es el proceso de convertir un objeto en un formato que pueda ser almacenado o transmitido, como JSON.
  group('serialización', () {
    test('una oferta sobrevive la ida y vuelta a JSON sin perder nada', () {
      final original = ejemplo();

      final texto = jsonEncode(original.toJson());

      final vuelta = Oferta.fromJson(jsonDecode(texto) as Map<String, dynamic>);

      expect(vuelta, equals(original));
    });

    test('una oferta sin la clave fotos se lee con lista vacía', () {
      final json = ejemplo().toJson()..remove('fotos');

      expect(Oferta.fromJson(json).fotos, isEmpty);
    });

    test('una oferta sin título dice qué campo falló', () {
      final json = ejemplo().toJson()..remove('titulo');

      expect(
        () => Oferta.fromJson(json),
        throwsA(isA<CampoInvalido>().having((e) => e.campo, 'campo', 'titulo')),
      );
    });

    test('una fecha inválida se rechaza', () {
      final json = ejemplo().toJson()..['creadoEn'] = 'fecha incorrecta';

      expect(() => Oferta.fromJson(json), throwsA(isA<CampoInvalido>()));
    });

    test('la fecha se conserva en UTC', () {
      final json = ejemplo().toJson();

      expect(json['creadoEn'], '2026-08-12T19:00:00.000Z');
    });
  });

  group('igualdad', () {
    test('dos ofertas con los mismos datos son iguales', () {
      expect(ejemplo(), equals(ejemplo()));
    });

    test('dos ofertas con los mismos datos tienen el mismo hashCode', () {
      expect(ejemplo().hashCode, equals(ejemplo().hashCode));

      expect({ejemplo(), ejemplo()}.length, 1);
    });

    test('dos ofertas con fotos diferentes no son iguales', () {
      expect(
        ejemplo(fotos: const ['foto1.jpg']),
        isNot(equals(ejemplo(fotos: const ['foto2.jpg']))),
      );
    });

    test('copyWith cambia solamente el dato indicado', () {
      //copywith se usa para crear una copia de un objeto con algunas propiedades modificadas
      final original = ejemplo();

      final copia = original.copyWith(titulo: 'Nueva oferta');

      expect(copia.titulo, 'Nueva oferta');
      expect(copia.id, original.id);
      expect(copia.precioOferta, original.precioOferta);
      expect(copia.negocio, original.negocio);
    });
  });

  group('reglas de negocio', () {
    //se utiliza para controlar la logica de negocio como descuentos, vencimiento de ofertas, etc.
    test('una oferta tiene descuento cuando el precio de oferta es menor', () {
      expect(ejemplo().tieneDescuento, isTrue);
    });

    test('una oferta disponible está vencida después de su fecha límite', () {
      final ahora = DateTime.utc(2026, 8, 14);

      expect(ejemplo().estaVencida(ahora), isTrue);
    });

    test('una oferta disponible no está vencida antes de su fecha límite', () {
      final ahora = DateTime.utc(2026, 8, 13, 20, 0);

      expect(ejemplo().estaVencida(ahora), isFalse);
    });
  });
}
