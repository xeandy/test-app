// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'map_anim_icon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MapAnimIconStateTearOff {
  const _$MapAnimIconStateTearOff();

// ignore: unused_element
  _MapAnimIconState call({double iconAnimValue, double mapAnimValue}) {
    return _MapAnimIconState(
      iconAnimValue: iconAnimValue,
      mapAnimValue: mapAnimValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MapAnimIconState = _$MapAnimIconStateTearOff();

/// @nodoc
mixin _$MapAnimIconState {
  double get iconAnimValue;
  double get mapAnimValue;

  @JsonKey(ignore: true)
  $MapAnimIconStateCopyWith<MapAnimIconState> get copyWith;
}

/// @nodoc
abstract class $MapAnimIconStateCopyWith<$Res> {
  factory $MapAnimIconStateCopyWith(
          MapAnimIconState value, $Res Function(MapAnimIconState) then) =
      _$MapAnimIconStateCopyWithImpl<$Res>;
  $Res call({double iconAnimValue, double mapAnimValue});
}

/// @nodoc
class _$MapAnimIconStateCopyWithImpl<$Res>
    implements $MapAnimIconStateCopyWith<$Res> {
  _$MapAnimIconStateCopyWithImpl(this._value, this._then);

  final MapAnimIconState _value;
  // ignore: unused_field
  final $Res Function(MapAnimIconState) _then;

  @override
  $Res call({
    Object iconAnimValue = freezed,
    Object mapAnimValue = freezed,
  }) {
    return _then(_value.copyWith(
      iconAnimValue: iconAnimValue == freezed
          ? _value.iconAnimValue
          : iconAnimValue as double,
      mapAnimValue: mapAnimValue == freezed
          ? _value.mapAnimValue
          : mapAnimValue as double,
    ));
  }
}

/// @nodoc
abstract class _$MapAnimIconStateCopyWith<$Res>
    implements $MapAnimIconStateCopyWith<$Res> {
  factory _$MapAnimIconStateCopyWith(
          _MapAnimIconState value, $Res Function(_MapAnimIconState) then) =
      __$MapAnimIconStateCopyWithImpl<$Res>;
  @override
  $Res call({double iconAnimValue, double mapAnimValue});
}

/// @nodoc
class __$MapAnimIconStateCopyWithImpl<$Res>
    extends _$MapAnimIconStateCopyWithImpl<$Res>
    implements _$MapAnimIconStateCopyWith<$Res> {
  __$MapAnimIconStateCopyWithImpl(
      _MapAnimIconState _value, $Res Function(_MapAnimIconState) _then)
      : super(_value, (v) => _then(v as _MapAnimIconState));

  @override
  _MapAnimIconState get _value => super._value as _MapAnimIconState;

  @override
  $Res call({
    Object iconAnimValue = freezed,
    Object mapAnimValue = freezed,
  }) {
    return _then(_MapAnimIconState(
      iconAnimValue: iconAnimValue == freezed
          ? _value.iconAnimValue
          : iconAnimValue as double,
      mapAnimValue: mapAnimValue == freezed
          ? _value.mapAnimValue
          : mapAnimValue as double,
    ));
  }
}

/// @nodoc
class _$_MapAnimIconState implements _MapAnimIconState {
  const _$_MapAnimIconState({this.iconAnimValue, this.mapAnimValue});

  @override
  final double iconAnimValue;
  @override
  final double mapAnimValue;

  @override
  String toString() {
    return 'MapAnimIconState(iconAnimValue: $iconAnimValue, mapAnimValue: $mapAnimValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapAnimIconState &&
            (identical(other.iconAnimValue, iconAnimValue) ||
                const DeepCollectionEquality()
                    .equals(other.iconAnimValue, iconAnimValue)) &&
            (identical(other.mapAnimValue, mapAnimValue) ||
                const DeepCollectionEquality()
                    .equals(other.mapAnimValue, mapAnimValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iconAnimValue) ^
      const DeepCollectionEquality().hash(mapAnimValue);

  @JsonKey(ignore: true)
  @override
  _$MapAnimIconStateCopyWith<_MapAnimIconState> get copyWith =>
      __$MapAnimIconStateCopyWithImpl<_MapAnimIconState>(this, _$identity);
}

abstract class _MapAnimIconState implements MapAnimIconState {
  const factory _MapAnimIconState({double iconAnimValue, double mapAnimValue}) =
      _$_MapAnimIconState;

  @override
  double get iconAnimValue;
  @override
  double get mapAnimValue;
  @override
  @JsonKey(ignore: true)
  _$MapAnimIconStateCopyWith<_MapAnimIconState> get copyWith;
}
