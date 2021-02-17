// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'animate_map_cursor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AnimateMapCursorStateTearOff {
  const _$AnimateMapCursorStateTearOff();

// ignore: unused_element
  _AnimateMapCursorState call(
      {@required double cursorHeight,
      @required double animValue,
      @required double googleMapAnimValue}) {
    return _AnimateMapCursorState(
      cursorHeight: cursorHeight,
      animValue: animValue,
      googleMapAnimValue: googleMapAnimValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AnimateMapCursorState = _$AnimateMapCursorStateTearOff();

/// @nodoc
mixin _$AnimateMapCursorState {
  double get cursorHeight;
  double get animValue;
  double get googleMapAnimValue;

  @JsonKey(ignore: true)
  $AnimateMapCursorStateCopyWith<AnimateMapCursorState> get copyWith;
}

/// @nodoc
abstract class $AnimateMapCursorStateCopyWith<$Res> {
  factory $AnimateMapCursorStateCopyWith(AnimateMapCursorState value,
          $Res Function(AnimateMapCursorState) then) =
      _$AnimateMapCursorStateCopyWithImpl<$Res>;
  $Res call({double cursorHeight, double animValue, double googleMapAnimValue});
}

/// @nodoc
class _$AnimateMapCursorStateCopyWithImpl<$Res>
    implements $AnimateMapCursorStateCopyWith<$Res> {
  _$AnimateMapCursorStateCopyWithImpl(this._value, this._then);

  final AnimateMapCursorState _value;
  // ignore: unused_field
  final $Res Function(AnimateMapCursorState) _then;

  @override
  $Res call({
    Object cursorHeight = freezed,
    Object animValue = freezed,
    Object googleMapAnimValue = freezed,
  }) {
    return _then(_value.copyWith(
      cursorHeight: cursorHeight == freezed
          ? _value.cursorHeight
          : cursorHeight as double,
      animValue: animValue == freezed ? _value.animValue : animValue as double,
      googleMapAnimValue: googleMapAnimValue == freezed
          ? _value.googleMapAnimValue
          : googleMapAnimValue as double,
    ));
  }
}

/// @nodoc
abstract class _$AnimateMapCursorStateCopyWith<$Res>
    implements $AnimateMapCursorStateCopyWith<$Res> {
  factory _$AnimateMapCursorStateCopyWith(_AnimateMapCursorState value,
          $Res Function(_AnimateMapCursorState) then) =
      __$AnimateMapCursorStateCopyWithImpl<$Res>;
  @override
  $Res call({double cursorHeight, double animValue, double googleMapAnimValue});
}

/// @nodoc
class __$AnimateMapCursorStateCopyWithImpl<$Res>
    extends _$AnimateMapCursorStateCopyWithImpl<$Res>
    implements _$AnimateMapCursorStateCopyWith<$Res> {
  __$AnimateMapCursorStateCopyWithImpl(_AnimateMapCursorState _value,
      $Res Function(_AnimateMapCursorState) _then)
      : super(_value, (v) => _then(v as _AnimateMapCursorState));

  @override
  _AnimateMapCursorState get _value => super._value as _AnimateMapCursorState;

  @override
  $Res call({
    Object cursorHeight = freezed,
    Object animValue = freezed,
    Object googleMapAnimValue = freezed,
  }) {
    return _then(_AnimateMapCursorState(
      cursorHeight: cursorHeight == freezed
          ? _value.cursorHeight
          : cursorHeight as double,
      animValue: animValue == freezed ? _value.animValue : animValue as double,
      googleMapAnimValue: googleMapAnimValue == freezed
          ? _value.googleMapAnimValue
          : googleMapAnimValue as double,
    ));
  }
}

/// @nodoc
class _$_AnimateMapCursorState implements _AnimateMapCursorState {
  const _$_AnimateMapCursorState(
      {@required this.cursorHeight,
      @required this.animValue,
      @required this.googleMapAnimValue})
      : assert(cursorHeight != null),
        assert(animValue != null),
        assert(googleMapAnimValue != null);

  @override
  final double cursorHeight;
  @override
  final double animValue;
  @override
  final double googleMapAnimValue;

  @override
  String toString() {
    return 'AnimateMapCursorState(cursorHeight: $cursorHeight, animValue: $animValue, googleMapAnimValue: $googleMapAnimValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnimateMapCursorState &&
            (identical(other.cursorHeight, cursorHeight) ||
                const DeepCollectionEquality()
                    .equals(other.cursorHeight, cursorHeight)) &&
            (identical(other.animValue, animValue) ||
                const DeepCollectionEquality()
                    .equals(other.animValue, animValue)) &&
            (identical(other.googleMapAnimValue, googleMapAnimValue) ||
                const DeepCollectionEquality()
                    .equals(other.googleMapAnimValue, googleMapAnimValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cursorHeight) ^
      const DeepCollectionEquality().hash(animValue) ^
      const DeepCollectionEquality().hash(googleMapAnimValue);

  @JsonKey(ignore: true)
  @override
  _$AnimateMapCursorStateCopyWith<_AnimateMapCursorState> get copyWith =>
      __$AnimateMapCursorStateCopyWithImpl<_AnimateMapCursorState>(
          this, _$identity);
}

abstract class _AnimateMapCursorState implements AnimateMapCursorState {
  const factory _AnimateMapCursorState(
      {@required double cursorHeight,
      @required double animValue,
      @required double googleMapAnimValue}) = _$_AnimateMapCursorState;

  @override
  double get cursorHeight;
  @override
  double get animValue;
  @override
  double get googleMapAnimValue;
  @override
  @JsonKey(ignore: true)
  _$AnimateMapCursorStateCopyWith<_AnimateMapCursorState> get copyWith;
}
