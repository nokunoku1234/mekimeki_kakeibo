// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'balance_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BalanceHistoryTearOff {
  const _$BalanceHistoryTearOff();

  _BalanceHistory call(
      {required String title,
      required String category,
      required String icon,
      required DateTime historyTime,
      int amount = 0}) {
    return _BalanceHistory(
      title: title,
      category: category,
      icon: icon,
      historyTime: historyTime,
      amount: amount,
    );
  }
}

/// @nodoc
const $BalanceHistory = _$BalanceHistoryTearOff();

/// @nodoc
mixin _$BalanceHistory {
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  DateTime get historyTime => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalanceHistoryCopyWith<BalanceHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceHistoryCopyWith<$Res> {
  factory $BalanceHistoryCopyWith(
          BalanceHistory value, $Res Function(BalanceHistory) then) =
      _$BalanceHistoryCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String category,
      String icon,
      DateTime historyTime,
      int amount});
}

/// @nodoc
class _$BalanceHistoryCopyWithImpl<$Res>
    implements $BalanceHistoryCopyWith<$Res> {
  _$BalanceHistoryCopyWithImpl(this._value, this._then);

  final BalanceHistory _value;
  // ignore: unused_field
  final $Res Function(BalanceHistory) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? icon = freezed,
    Object? historyTime = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      historyTime: historyTime == freezed
          ? _value.historyTime
          : historyTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BalanceHistoryCopyWith<$Res>
    implements $BalanceHistoryCopyWith<$Res> {
  factory _$BalanceHistoryCopyWith(
          _BalanceHistory value, $Res Function(_BalanceHistory) then) =
      __$BalanceHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String category,
      String icon,
      DateTime historyTime,
      int amount});
}

/// @nodoc
class __$BalanceHistoryCopyWithImpl<$Res>
    extends _$BalanceHistoryCopyWithImpl<$Res>
    implements _$BalanceHistoryCopyWith<$Res> {
  __$BalanceHistoryCopyWithImpl(
      _BalanceHistory _value, $Res Function(_BalanceHistory) _then)
      : super(_value, (v) => _then(v as _BalanceHistory));

  @override
  _BalanceHistory get _value => super._value as _BalanceHistory;

  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? icon = freezed,
    Object? historyTime = freezed,
    Object? amount = freezed,
  }) {
    return _then(_BalanceHistory(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      historyTime: historyTime == freezed
          ? _value.historyTime
          : historyTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BalanceHistory implements _BalanceHistory {
  const _$_BalanceHistory(
      {required this.title,
      required this.category,
      required this.icon,
      required this.historyTime,
      this.amount = 0});

  @override
  final String title;
  @override
  final String category;
  @override
  final String icon;
  @override
  final DateTime historyTime;
  @JsonKey()
  @override
  final int amount;

  @override
  String toString() {
    return 'BalanceHistory(title: $title, category: $category, icon: $icon, historyTime: $historyTime, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalanceHistory &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality()
                .equals(other.historyTime, historyTime) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(historyTime),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$BalanceHistoryCopyWith<_BalanceHistory> get copyWith =>
      __$BalanceHistoryCopyWithImpl<_BalanceHistory>(this, _$identity);
}

abstract class _BalanceHistory implements BalanceHistory {
  const factory _BalanceHistory(
      {required String title,
      required String category,
      required String icon,
      required DateTime historyTime,
      int amount}) = _$_BalanceHistory;

  @override
  String get title;
  @override
  String get category;
  @override
  String get icon;
  @override
  DateTime get historyTime;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$BalanceHistoryCopyWith<_BalanceHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
