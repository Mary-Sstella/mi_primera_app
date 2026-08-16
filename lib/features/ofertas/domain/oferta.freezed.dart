// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oferta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Oferta {

 String get id; String get titulo; String get descripcion; double get precioOriginal; double get precioOferta; String get negocio; Ubicacion get ubicacion; DateTime get creadoEn; EstadoOferta get estado; List<String> get fotos;
/// Create a copy of Oferta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfertaCopyWith<Oferta> get copyWith => _$OfertaCopyWithImpl<Oferta>(this as Oferta, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Oferta&&(identical(other.id, id) || other.id == id)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.precioOriginal, precioOriginal) || other.precioOriginal == precioOriginal)&&(identical(other.precioOferta, precioOferta) || other.precioOferta == precioOferta)&&(identical(other.negocio, negocio) || other.negocio == negocio)&&(identical(other.ubicacion, ubicacion) || other.ubicacion == ubicacion)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other.fotos, fotos));
}


@override
int get hashCode => Object.hash(runtimeType,id,titulo,descripcion,precioOriginal,precioOferta,negocio,ubicacion,creadoEn,estado,const DeepCollectionEquality().hash(fotos));

@override
String toString() {
  return 'Oferta(id: $id, titulo: $titulo, descripcion: $descripcion, precioOriginal: $precioOriginal, precioOferta: $precioOferta, negocio: $negocio, ubicacion: $ubicacion, creadoEn: $creadoEn, estado: $estado, fotos: $fotos)';
}


}

/// @nodoc
abstract mixin class $OfertaCopyWith<$Res>  {
  factory $OfertaCopyWith(Oferta value, $Res Function(Oferta) _then) = _$OfertaCopyWithImpl;
@useResult
$Res call({
 String id, String titulo, String descripcion, double precioOriginal, double precioOferta, String negocio, Ubicacion ubicacion, DateTime creadoEn, EstadoOferta estado, List<String> fotos
});




}
/// @nodoc
class _$OfertaCopyWithImpl<$Res>
    implements $OfertaCopyWith<$Res> {
  _$OfertaCopyWithImpl(this._self, this._then);

  final Oferta _self;
  final $Res Function(Oferta) _then;

/// Create a copy of Oferta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? titulo = null,Object? descripcion = null,Object? precioOriginal = null,Object? precioOferta = null,Object? negocio = null,Object? ubicacion = null,Object? creadoEn = null,Object? estado = null,Object? fotos = null,}) {
  return _then(Oferta(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,titulo: null == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,precioOriginal: null == precioOriginal ? _self.precioOriginal : precioOriginal // ignore: cast_nullable_to_non_nullable
as double,precioOferta: null == precioOferta ? _self.precioOferta : precioOferta // ignore: cast_nullable_to_non_nullable
as double,negocio: null == negocio ? _self.negocio : negocio // ignore: cast_nullable_to_non_nullable
as String,ubicacion: null == ubicacion ? _self.ubicacion : ubicacion // ignore: cast_nullable_to_non_nullable
as Ubicacion,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoOferta,fotos: null == fotos ? _self.fotos : fotos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Oferta].
extension OfertaPatterns on Oferta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Oferta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Oferta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Oferta value)  $default,){
final _that = this;
switch (_that) {
case _Oferta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Oferta value)?  $default,){
final _that = this;
switch (_that) {
case _Oferta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String titulo,  String descripcion,  double precioOriginal,  double precioOferta,  String negocio,  Ubicacion ubicacion,  DateTime creadoEn,  EstadoOferta estado,  List<String> fotos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Oferta() when $default != null:
return $default(_that.id,_that.titulo,_that.descripcion,_that.precioOriginal,_that.precioOferta,_that.negocio,_that.ubicacion,_that.creadoEn,_that.estado,_that.fotos);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String titulo,  String descripcion,  double precioOriginal,  double precioOferta,  String negocio,  Ubicacion ubicacion,  DateTime creadoEn,  EstadoOferta estado,  List<String> fotos)  $default,) {final _that = this;
switch (_that) {
case _Oferta():
return $default(_that.id,_that.titulo,_that.descripcion,_that.precioOriginal,_that.precioOferta,_that.negocio,_that.ubicacion,_that.creadoEn,_that.estado,_that.fotos);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String titulo,  String descripcion,  double precioOriginal,  double precioOferta,  String negocio,  Ubicacion ubicacion,  DateTime creadoEn,  EstadoOferta estado,  List<String> fotos)?  $default,) {final _that = this;
switch (_that) {
case _Oferta() when $default != null:
return $default(_that.id,_that.titulo,_that.descripcion,_that.precioOriginal,_that.precioOferta,_that.negocio,_that.ubicacion,_that.creadoEn,_that.estado,_that.fotos);case _:
  return null;

}
}

}

/// @nodoc


class _Oferta extends Oferta {
  const _Oferta({required this.id, required this.titulo, required this.descripcion, required this.precioOriginal, required this.precioOferta, required this.negocio, required this.ubicacion, required this.creadoEn, required this.estado,  List<String> fotos = const <String>[]}): _fotos = fotos,super._();
  

@override final  String id;
@override final  String titulo;
@override final  String descripcion;
@override final  double precioOriginal;
@override final  double precioOferta;
@override final  String negocio;
@override final  Ubicacion ubicacion;
@override final  DateTime creadoEn;
@override final  EstadoOferta estado;
 final  List<String> _fotos;
@override@JsonKey() List<String> get fotos {
  if (_fotos is EqualUnmodifiableListView) return _fotos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fotos);
}


/// Create a copy of Oferta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfertaCopyWith<_Oferta> get copyWith => __$OfertaCopyWithImpl<_Oferta>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Oferta&&(identical(other.id, id) || other.id == id)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.precioOriginal, precioOriginal) || other.precioOriginal == precioOriginal)&&(identical(other.precioOferta, precioOferta) || other.precioOferta == precioOferta)&&(identical(other.negocio, negocio) || other.negocio == negocio)&&(identical(other.ubicacion, ubicacion) || other.ubicacion == ubicacion)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other._fotos, _fotos));
}


@override
int get hashCode => Object.hash(runtimeType,id,titulo,descripcion,precioOriginal,precioOferta,negocio,ubicacion,creadoEn,estado,const DeepCollectionEquality().hash(_fotos));

@override
String toString() {
  return 'Oferta(id: $id, titulo: $titulo, descripcion: $descripcion, precioOriginal: $precioOriginal, precioOferta: $precioOferta, negocio: $negocio, ubicacion: $ubicacion, creadoEn: $creadoEn, estado: $estado, fotos: $fotos)';
}


}

/// @nodoc
abstract mixin class _$OfertaCopyWith<$Res> implements $OfertaCopyWith<$Res> {
  factory _$OfertaCopyWith(_Oferta value, $Res Function(_Oferta) _then) = __$OfertaCopyWithImpl;
@override @useResult
$Res call({
 String id, String titulo, String descripcion, double precioOriginal, double precioOferta, String negocio, Ubicacion ubicacion, DateTime creadoEn, EstadoOferta estado, List<String> fotos
});




}
/// @nodoc
class __$OfertaCopyWithImpl<$Res>
    implements _$OfertaCopyWith<$Res> {
  __$OfertaCopyWithImpl(this._self, this._then);

  final _Oferta _self;
  final $Res Function(_Oferta) _then;

/// Create a copy of Oferta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? titulo = null,Object? descripcion = null,Object? precioOriginal = null,Object? precioOferta = null,Object? negocio = null,Object? ubicacion = null,Object? creadoEn = null,Object? estado = null,Object? fotos = null,}) {
  return _then(_Oferta(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,titulo: null == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,precioOriginal: null == precioOriginal ? _self.precioOriginal : precioOriginal // ignore: cast_nullable_to_non_nullable
as double,precioOferta: null == precioOferta ? _self.precioOferta : precioOferta // ignore: cast_nullable_to_non_nullable
as double,negocio: null == negocio ? _self.negocio : negocio // ignore: cast_nullable_to_non_nullable
as String,ubicacion: null == ubicacion ? _self.ubicacion : ubicacion // ignore: cast_nullable_to_non_nullable
as Ubicacion,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoOferta,fotos: null == fotos ? _self._fotos : fotos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
