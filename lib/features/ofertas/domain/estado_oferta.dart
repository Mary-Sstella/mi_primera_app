import 'package:mi_primera_app/core/json.dart';

sealed class EstadoOferta {
  const EstadoOferta();

  factory EstadoOferta.fromJson(Map<String, dynamic> json) {
    final tipo = leerTexto(json, 'tipo');

    return switch (tipo) {
      'disponible' => Disponible(
        cantidadDisponible: leerEntero(json, 'cantidadDisponible'),
        fechaLimite: leerFecha(json, 'fechaLimite'),
      ),

      'vendida' => Vendida(
        comprador: leerTexto(json, 'comprador'),
        horaVenta: leerFecha(json, 'horaVenta'),
      ),

      'agotada' => Agotada(horaAgotada: leerFecha(json, 'horaAgotada')),

      'vencida' => Vencida(
        fechaVencimiento: leerFecha(json, 'fechaVencimiento'),
      ),

      _ => throw CampoInvalido('estado.tipo', 'no es un estado conocido', tipo),
    };
  }

  Map<String, dynamic> toJson() => switch (this) {
    Disponible(:final cantidadDisponible, :final fechaLimite) => {
      'tipo': 'disponible',
      'cantidadDisponible': cantidadDisponible,
      'fechaLimite': fechaLimite.toIso8601String(),
    },

    Vendida(:final comprador, :final horaVenta) => {
      'tipo': 'vendida',
      'comprador': comprador,
      'horaVenta': horaVenta.toIso8601String(),
    },

    Agotada(:final horaAgotada) => {
      'tipo': 'agotada',
      'horaAgotada': horaAgotada.toIso8601String(),
    },

    Vencida(:final fechaVencimiento) => {
      'tipo': 'vencida',
      'fechaVencimiento': fechaVencimiento.toIso8601String(),
    },
  };

  String get etiqueta => switch (this) {
    Disponible() => 'Disponible',
    Vendida() => 'Vendida',
    Agotada() => 'Agotada',
    Vencida() => 'Vencida',
  };
}

final class Disponible extends EstadoOferta {
  const Disponible({
    required this.cantidadDisponible,
    required this.fechaLimite,
  });

  final int cantidadDisponible;
  final DateTime fechaLimite;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Disponible &&
          other.cantidadDisponible == cantidadDisponible &&
          other.fechaLimite == fechaLimite;

  @override
  int get hashCode => Object.hash(runtimeType, cantidadDisponible, fechaLimite);

  @override
  String toString() => 'Disponible($cantidadDisponible, $fechaLimite)';
}

final class Vendida extends EstadoOferta {
  const Vendida({required this.comprador, required this.horaVenta});

  final String comprador;
  final DateTime horaVenta;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Vendida &&
          other.comprador == comprador &&
          other.horaVenta == horaVenta;

  @override
  int get hashCode => Object.hash(runtimeType, comprador, horaVenta);

  @override
  String toString() => 'Vendida($comprador, $horaVenta)';
}

final class Agotada extends EstadoOferta {
  const Agotada({required this.horaAgotada});

  final DateTime horaAgotada;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Agotada && other.horaAgotada == horaAgotada;

  @override
  int get hashCode => Object.hash(runtimeType, horaAgotada);

  @override
  String toString() => 'Agotada($horaAgotada)';
}

final class Vencida extends EstadoOferta {
  const Vencida({required this.fechaVencimiento});

  final DateTime fechaVencimiento;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Vencida && other.fechaVencimiento == fechaVencimiento;

  @override
  int get hashCode => Object.hash(runtimeType, fechaVencimiento);

  @override
  String toString() => 'Vencida($fechaVencimiento)';
}
