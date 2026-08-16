# Mi Primera App

Aplicación móvil desarrollada en Flutter para gestionar ofertas de productos,
permitiendo representar información de ofertas, ubicaciones y estados.

## El dominio

- `Oferta` — entidad principal. Su identidad está determinada por `id`.
- `Ubicacion` — objeto de valor que representa la ubicación de una oferta.
- `EstadoOferta` — representa los diferentes estados de una oferta.
- `OfertasRepository` — interfaz que define las operaciones que necesita la aplicación.
- `OfertasLocales` — implementación que obtiene las ofertas desde el archivo JSON local.

## Datos

Las ofertas se cargan inicialmente desde:

`assets/data/ofertas.json`

La lectura se realiza mediante `OfertasLocales`, detrás de la interfaz
`OfertasRepository`. Esto permite cambiar posteriormente la fuente de datos
por Firestore sin modificar el resto de la aplicación.

## Freezed

Se uso `freezed` para generar automáticamente código repetitivo
como `copyWith`, `==`, `hashCode` y `toString`, reduciendo código escrito
manualmente y evitando errores en estas operaciones.

Las reglas de negocio y la validación personalizada del JSON se mantienen
en el código escrito manualmente.

## Cómo ejecutar el proyecto

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
flutter run