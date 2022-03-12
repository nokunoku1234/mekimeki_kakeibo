// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_nav_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavItemEntityTearOff {
  const _$BottomNavItemEntityTearOff();

  _BottomNavItemEntity call({required String label, required IconData icon}) {
    return _BottomNavItemEntity(
      label: label,
      icon: icon,
    );
  }
}

/// @nodoc
const $BottomNavItemEntity = _$BottomNavItemEntityTearOff();

/// @nodoc
mixin _$BottomNavItemEntity {
  String get label => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavItemEntityCopyWith<BottomNavItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavItemEntityCopyWith<$Res> {
  factory $BottomNavItemEntityCopyWith(
          BottomNavItemEntity value, $Res Function(BottomNavItemEntity) then) =
      _$BottomNavItemEntityCopyWithImpl<$Res>;
  $Res call({String label, IconData icon});
}

/// @nodoc
class _$BottomNavItemEntityCopyWithImpl<$Res>
    implements $BottomNavItemEntityCopyWith<$Res> {
  _$BottomNavItemEntityCopyWithImpl(this._value, this._then);

  final BottomNavItemEntity _value;
  // ignore: unused_field
  final $Res Function(BottomNavItemEntity) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc
abstract class _$BottomNavItemEntityCopyWith<$Res>
    implements $BottomNavItemEntityCopyWith<$Res> {
  factory _$BottomNavItemEntityCopyWith(_BottomNavItemEntity value,
          $Res Function(_BottomNavItemEntity) then) =
      __$BottomNavItemEntityCopyWithImpl<$Res>;
  @override
  $Res call({String label, IconData icon});
}

/// @nodoc
class __$BottomNavItemEntityCopyWithImpl<$Res>
    extends _$BottomNavItemEntityCopyWithImpl<$Res>
    implements _$BottomNavItemEntityCopyWith<$Res> {
  __$BottomNavItemEntityCopyWithImpl(
      _BottomNavItemEntity _value, $Res Function(_BottomNavItemEntity) _then)
      : super(_value, (v) => _then(v as _BottomNavItemEntity));

  @override
  _BottomNavItemEntity get _value => super._value as _BottomNavItemEntity;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
  }) {
    return _then(_BottomNavItemEntity(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_BottomNavItemEntity implements _BottomNavItemEntity {
  const _$_BottomNavItemEntity({required this.label, required this.icon});

  @override
  final String label;
  @override
  final IconData icon;

  @override
  String toString() {
    return 'BottomNavItemEntity(label: $label, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomNavItemEntity &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$BottomNavItemEntityCopyWith<_BottomNavItemEntity> get copyWith =>
      __$BottomNavItemEntityCopyWithImpl<_BottomNavItemEntity>(
          this, _$identity);
}

abstract class _BottomNavItemEntity implements BottomNavItemEntity {
  const factory _BottomNavItemEntity(
      {required String label, required IconData icon}) = _$_BottomNavItemEntity;

  @override
  String get label;
  @override
  IconData get icon;
  @override
  @JsonKey(ignore: true)
  _$BottomNavItemEntityCopyWith<_BottomNavItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
