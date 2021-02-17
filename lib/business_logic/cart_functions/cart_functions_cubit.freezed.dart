// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_functions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartFunctionsStateTearOff {
  const _$CartFunctionsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _CartLoaded cartLoaded({Cart userCart}) {
    return _CartLoaded(
      userCart: userCart,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartFunctionsState = _$CartFunctionsStateTearOff();

/// @nodoc
mixin _$CartFunctionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult cartLoaded(Cart userCart),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult cartLoaded(Cart userCart),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult cartLoaded(_CartLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult cartLoaded(_CartLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CartFunctionsStateCopyWith<$Res> {
  factory $CartFunctionsStateCopyWith(
          CartFunctionsState value, $Res Function(CartFunctionsState) then) =
      _$CartFunctionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartFunctionsStateCopyWithImpl<$Res>
    implements $CartFunctionsStateCopyWith<$Res> {
  _$CartFunctionsStateCopyWithImpl(this._value, this._then);

  final CartFunctionsState _value;
  // ignore: unused_field
  final $Res Function(CartFunctionsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CartFunctionsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CartFunctionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult cartLoaded(Cart userCart),
  }) {
    assert(initial != null);
    assert(cartLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult cartLoaded(Cart userCart),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult cartLoaded(_CartLoaded value),
  }) {
    assert(initial != null);
    assert(cartLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult cartLoaded(_CartLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartFunctionsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CartLoadedCopyWith<$Res> {
  factory _$CartLoadedCopyWith(
          _CartLoaded value, $Res Function(_CartLoaded) then) =
      __$CartLoadedCopyWithImpl<$Res>;
  $Res call({Cart userCart});

  $CartCopyWith<$Res> get userCart;
}

/// @nodoc
class __$CartLoadedCopyWithImpl<$Res>
    extends _$CartFunctionsStateCopyWithImpl<$Res>
    implements _$CartLoadedCopyWith<$Res> {
  __$CartLoadedCopyWithImpl(
      _CartLoaded _value, $Res Function(_CartLoaded) _then)
      : super(_value, (v) => _then(v as _CartLoaded));

  @override
  _CartLoaded get _value => super._value as _CartLoaded;

  @override
  $Res call({
    Object userCart = freezed,
  }) {
    return _then(_CartLoaded(
      userCart: userCart == freezed ? _value.userCart : userCart as Cart,
    ));
  }

  @override
  $CartCopyWith<$Res> get userCart {
    if (_value.userCart == null) {
      return null;
    }
    return $CartCopyWith<$Res>(_value.userCart, (value) {
      return _then(_value.copyWith(userCart: value));
    });
  }
}

/// @nodoc
class _$_CartLoaded implements _CartLoaded {
  const _$_CartLoaded({this.userCart});

  @override
  final Cart userCart;

  @override
  String toString() {
    return 'CartFunctionsState.cartLoaded(userCart: $userCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartLoaded &&
            (identical(other.userCart, userCart) ||
                const DeepCollectionEquality()
                    .equals(other.userCart, userCart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userCart);

  @JsonKey(ignore: true)
  @override
  _$CartLoadedCopyWith<_CartLoaded> get copyWith =>
      __$CartLoadedCopyWithImpl<_CartLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult cartLoaded(Cart userCart),
  }) {
    assert(initial != null);
    assert(cartLoaded != null);
    return cartLoaded(userCart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult cartLoaded(Cart userCart),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cartLoaded != null) {
      return cartLoaded(userCart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult cartLoaded(_CartLoaded value),
  }) {
    assert(initial != null);
    assert(cartLoaded != null);
    return cartLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult cartLoaded(_CartLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cartLoaded != null) {
      return cartLoaded(this);
    }
    return orElse();
  }
}

abstract class _CartLoaded implements CartFunctionsState {
  const factory _CartLoaded({Cart userCart}) = _$_CartLoaded;

  Cart get userCart;
  @JsonKey(ignore: true)
  _$CartLoadedCopyWith<_CartLoaded> get copyWith;
}
