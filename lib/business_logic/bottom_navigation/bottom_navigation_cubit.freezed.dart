// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bottom_navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IndexChanged indexChanged(int currentIndex) {
    return _IndexChanged(
      currentIndex,
    );
  }

// ignore: unused_element
  _OfficeCategory officeCategory() {
    return const _OfficeCategory();
  }

// ignore: unused_element
  _HouseCategory houseCategory() {
    return const _HouseCategory();
  }

// ignore: unused_element
  _HoReCaCategory horecaCategory() {
    return const _HoReCaCategory();
  }
}

/// @nodoc
// ignore: unused_element
const $BottomNavigationState = _$BottomNavigationStateTearOff();

/// @nodoc
mixin _$BottomNavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult indexChanged(int currentIndex),
    @required TResult officeCategory(),
    @required TResult houseCategory(),
    @required TResult horecaCategory(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult indexChanged(int currentIndex),
    TResult officeCategory(),
    TResult houseCategory(),
    TResult horecaCategory(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult indexChanged(_IndexChanged value),
    @required TResult officeCategory(_OfficeCategory value),
    @required TResult houseCategory(_HouseCategory value),
    @required TResult horecaCategory(_HoReCaCategory value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult indexChanged(_IndexChanged value),
    TResult officeCategory(_OfficeCategory value),
    TResult houseCategory(_HouseCategory value),
    TResult horecaCategory(_HoReCaCategory value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
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
    return 'BottomNavigationState.initial()';
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
    @required TResult indexChanged(int currentIndex),
    @required TResult officeCategory(),
    @required TResult houseCategory(),
    @required TResult horecaCategory(),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult indexChanged(int currentIndex),
    TResult officeCategory(),
    TResult houseCategory(),
    TResult horecaCategory(),
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
    @required TResult indexChanged(_IndexChanged value),
    @required TResult officeCategory(_OfficeCategory value),
    @required TResult houseCategory(_HouseCategory value),
    @required TResult horecaCategory(_HoReCaCategory value),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult indexChanged(_IndexChanged value),
    TResult officeCategory(_OfficeCategory value),
    TResult houseCategory(_HouseCategory value),
    TResult horecaCategory(_HoReCaCategory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BottomNavigationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IndexChangedCopyWith<$Res> {
  factory _$IndexChangedCopyWith(
          _IndexChanged value, $Res Function(_IndexChanged) then) =
      __$IndexChangedCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class __$IndexChangedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$IndexChangedCopyWith<$Res> {
  __$IndexChangedCopyWithImpl(
      _IndexChanged _value, $Res Function(_IndexChanged) _then)
      : super(_value, (v) => _then(v as _IndexChanged));

  @override
  _IndexChanged get _value => super._value as _IndexChanged;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_IndexChanged(
      currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
class _$_IndexChanged implements _IndexChanged {
  const _$_IndexChanged(this.currentIndex) : assert(currentIndex != null);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'BottomNavigationState.indexChanged(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IndexChanged &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$IndexChangedCopyWith<_IndexChanged> get copyWith =>
      __$IndexChangedCopyWithImpl<_IndexChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult indexChanged(int currentIndex),
    @required TResult officeCategory(),
    @required TResult houseCategory(),
    @required TResult horecaCategory(),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return indexChanged(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult indexChanged(int currentIndex),
    TResult officeCategory(),
    TResult houseCategory(),
    TResult horecaCategory(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChanged != null) {
      return indexChanged(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult indexChanged(_IndexChanged value),
    @required TResult officeCategory(_OfficeCategory value),
    @required TResult houseCategory(_HouseCategory value),
    @required TResult horecaCategory(_HoReCaCategory value),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult indexChanged(_IndexChanged value),
    TResult officeCategory(_OfficeCategory value),
    TResult houseCategory(_HouseCategory value),
    TResult horecaCategory(_HoReCaCategory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChanged != null) {
      return indexChanged(this);
    }
    return orElse();
  }
}

abstract class _IndexChanged implements BottomNavigationState {
  const factory _IndexChanged(int currentIndex) = _$_IndexChanged;

  int get currentIndex;
  @JsonKey(ignore: true)
  _$IndexChangedCopyWith<_IndexChanged> get copyWith;
}

/// @nodoc
abstract class _$OfficeCategoryCopyWith<$Res> {
  factory _$OfficeCategoryCopyWith(
          _OfficeCategory value, $Res Function(_OfficeCategory) then) =
      __$OfficeCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$OfficeCategoryCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$OfficeCategoryCopyWith<$Res> {
  __$OfficeCategoryCopyWithImpl(
      _OfficeCategory _value, $Res Function(_OfficeCategory) _then)
      : super(_value, (v) => _then(v as _OfficeCategory));

  @override
  _OfficeCategory get _value => super._value as _OfficeCategory;
}

/// @nodoc
class _$_OfficeCategory implements _OfficeCategory {
  const _$_OfficeCategory();

  @override
  String toString() {
    return 'BottomNavigationState.officeCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OfficeCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult indexChanged(int currentIndex),
    @required TResult officeCategory(),
    @required TResult houseCategory(),
    @required TResult horecaCategory(),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return officeCategory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult indexChanged(int currentIndex),
    TResult officeCategory(),
    TResult houseCategory(),
    TResult horecaCategory(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (officeCategory != null) {
      return officeCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult indexChanged(_IndexChanged value),
    @required TResult officeCategory(_OfficeCategory value),
    @required TResult houseCategory(_HouseCategory value),
    @required TResult horecaCategory(_HoReCaCategory value),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return officeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult indexChanged(_IndexChanged value),
    TResult officeCategory(_OfficeCategory value),
    TResult houseCategory(_HouseCategory value),
    TResult horecaCategory(_HoReCaCategory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (officeCategory != null) {
      return officeCategory(this);
    }
    return orElse();
  }
}

abstract class _OfficeCategory implements BottomNavigationState {
  const factory _OfficeCategory() = _$_OfficeCategory;
}

/// @nodoc
abstract class _$HouseCategoryCopyWith<$Res> {
  factory _$HouseCategoryCopyWith(
          _HouseCategory value, $Res Function(_HouseCategory) then) =
      __$HouseCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$HouseCategoryCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$HouseCategoryCopyWith<$Res> {
  __$HouseCategoryCopyWithImpl(
      _HouseCategory _value, $Res Function(_HouseCategory) _then)
      : super(_value, (v) => _then(v as _HouseCategory));

  @override
  _HouseCategory get _value => super._value as _HouseCategory;
}

/// @nodoc
class _$_HouseCategory implements _HouseCategory {
  const _$_HouseCategory();

  @override
  String toString() {
    return 'BottomNavigationState.houseCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HouseCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult indexChanged(int currentIndex),
    @required TResult officeCategory(),
    @required TResult houseCategory(),
    @required TResult horecaCategory(),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return houseCategory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult indexChanged(int currentIndex),
    TResult officeCategory(),
    TResult houseCategory(),
    TResult horecaCategory(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (houseCategory != null) {
      return houseCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult indexChanged(_IndexChanged value),
    @required TResult officeCategory(_OfficeCategory value),
    @required TResult houseCategory(_HouseCategory value),
    @required TResult horecaCategory(_HoReCaCategory value),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return houseCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult indexChanged(_IndexChanged value),
    TResult officeCategory(_OfficeCategory value),
    TResult houseCategory(_HouseCategory value),
    TResult horecaCategory(_HoReCaCategory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (houseCategory != null) {
      return houseCategory(this);
    }
    return orElse();
  }
}

abstract class _HouseCategory implements BottomNavigationState {
  const factory _HouseCategory() = _$_HouseCategory;
}

/// @nodoc
abstract class _$HoReCaCategoryCopyWith<$Res> {
  factory _$HoReCaCategoryCopyWith(
          _HoReCaCategory value, $Res Function(_HoReCaCategory) then) =
      __$HoReCaCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$HoReCaCategoryCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$HoReCaCategoryCopyWith<$Res> {
  __$HoReCaCategoryCopyWithImpl(
      _HoReCaCategory _value, $Res Function(_HoReCaCategory) _then)
      : super(_value, (v) => _then(v as _HoReCaCategory));

  @override
  _HoReCaCategory get _value => super._value as _HoReCaCategory;
}

/// @nodoc
class _$_HoReCaCategory implements _HoReCaCategory {
  const _$_HoReCaCategory();

  @override
  String toString() {
    return 'BottomNavigationState.horecaCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HoReCaCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult indexChanged(int currentIndex),
    @required TResult officeCategory(),
    @required TResult houseCategory(),
    @required TResult horecaCategory(),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return horecaCategory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult indexChanged(int currentIndex),
    TResult officeCategory(),
    TResult houseCategory(),
    TResult horecaCategory(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (horecaCategory != null) {
      return horecaCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult indexChanged(_IndexChanged value),
    @required TResult officeCategory(_OfficeCategory value),
    @required TResult houseCategory(_HouseCategory value),
    @required TResult horecaCategory(_HoReCaCategory value),
  }) {
    assert(initial != null);
    assert(indexChanged != null);
    assert(officeCategory != null);
    assert(houseCategory != null);
    assert(horecaCategory != null);
    return horecaCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult indexChanged(_IndexChanged value),
    TResult officeCategory(_OfficeCategory value),
    TResult houseCategory(_HouseCategory value),
    TResult horecaCategory(_HoReCaCategory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (horecaCategory != null) {
      return horecaCategory(this);
    }
    return orElse();
  }
}

abstract class _HoReCaCategory implements BottomNavigationState {
  const factory _HoReCaCategory() = _$_HoReCaCategory;
}
