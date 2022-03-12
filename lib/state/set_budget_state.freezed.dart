// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set_budget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetBudgetStateTearOff {
  const _$SetBudgetStateTearOff();

  _SetBudgetState call(
      {required DateTime now,
      int totalIncomeAmount = 0,
      int totalSpendingAmount = 0,
      List<BalanceHistory> incomeList = const [],
      List<BalanceHistory> spendingList = const []}) {
    return _SetBudgetState(
      now: now,
      totalIncomeAmount: totalIncomeAmount,
      totalSpendingAmount: totalSpendingAmount,
      incomeList: incomeList,
      spendingList: spendingList,
    );
  }
}

/// @nodoc
const $SetBudgetState = _$SetBudgetStateTearOff();

/// @nodoc
mixin _$SetBudgetState {
  DateTime get now => throw _privateConstructorUsedError;
  int get totalIncomeAmount => throw _privateConstructorUsedError;
  int get totalSpendingAmount => throw _privateConstructorUsedError;
  List<BalanceHistory> get incomeList => throw _privateConstructorUsedError;
  List<BalanceHistory> get spendingList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetBudgetStateCopyWith<SetBudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetBudgetStateCopyWith<$Res> {
  factory $SetBudgetStateCopyWith(
          SetBudgetState value, $Res Function(SetBudgetState) then) =
      _$SetBudgetStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime now,
      int totalIncomeAmount,
      int totalSpendingAmount,
      List<BalanceHistory> incomeList,
      List<BalanceHistory> spendingList});
}

/// @nodoc
class _$SetBudgetStateCopyWithImpl<$Res>
    implements $SetBudgetStateCopyWith<$Res> {
  _$SetBudgetStateCopyWithImpl(this._value, this._then);

  final SetBudgetState _value;
  // ignore: unused_field
  final $Res Function(SetBudgetState) _then;

  @override
  $Res call({
    Object? now = freezed,
    Object? totalIncomeAmount = freezed,
    Object? totalSpendingAmount = freezed,
    Object? incomeList = freezed,
    Object? spendingList = freezed,
  }) {
    return _then(_value.copyWith(
      now: now == freezed
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalIncomeAmount: totalIncomeAmount == freezed
          ? _value.totalIncomeAmount
          : totalIncomeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpendingAmount: totalSpendingAmount == freezed
          ? _value.totalSpendingAmount
          : totalSpendingAmount // ignore: cast_nullable_to_non_nullable
              as int,
      incomeList: incomeList == freezed
          ? _value.incomeList
          : incomeList // ignore: cast_nullable_to_non_nullable
              as List<BalanceHistory>,
      spendingList: spendingList == freezed
          ? _value.spendingList
          : spendingList // ignore: cast_nullable_to_non_nullable
              as List<BalanceHistory>,
    ));
  }
}

/// @nodoc
abstract class _$SetBudgetStateCopyWith<$Res>
    implements $SetBudgetStateCopyWith<$Res> {
  factory _$SetBudgetStateCopyWith(
          _SetBudgetState value, $Res Function(_SetBudgetState) then) =
      __$SetBudgetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime now,
      int totalIncomeAmount,
      int totalSpendingAmount,
      List<BalanceHistory> incomeList,
      List<BalanceHistory> spendingList});
}

/// @nodoc
class __$SetBudgetStateCopyWithImpl<$Res>
    extends _$SetBudgetStateCopyWithImpl<$Res>
    implements _$SetBudgetStateCopyWith<$Res> {
  __$SetBudgetStateCopyWithImpl(
      _SetBudgetState _value, $Res Function(_SetBudgetState) _then)
      : super(_value, (v) => _then(v as _SetBudgetState));

  @override
  _SetBudgetState get _value => super._value as _SetBudgetState;

  @override
  $Res call({
    Object? now = freezed,
    Object? totalIncomeAmount = freezed,
    Object? totalSpendingAmount = freezed,
    Object? incomeList = freezed,
    Object? spendingList = freezed,
  }) {
    return _then(_SetBudgetState(
      now: now == freezed
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalIncomeAmount: totalIncomeAmount == freezed
          ? _value.totalIncomeAmount
          : totalIncomeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpendingAmount: totalSpendingAmount == freezed
          ? _value.totalSpendingAmount
          : totalSpendingAmount // ignore: cast_nullable_to_non_nullable
              as int,
      incomeList: incomeList == freezed
          ? _value.incomeList
          : incomeList // ignore: cast_nullable_to_non_nullable
              as List<BalanceHistory>,
      spendingList: spendingList == freezed
          ? _value.spendingList
          : spendingList // ignore: cast_nullable_to_non_nullable
              as List<BalanceHistory>,
    ));
  }
}

/// @nodoc

class _$_SetBudgetState implements _SetBudgetState {
  const _$_SetBudgetState(
      {required this.now,
      this.totalIncomeAmount = 0,
      this.totalSpendingAmount = 0,
      this.incomeList = const [],
      this.spendingList = const []});

  @override
  final DateTime now;
  @JsonKey()
  @override
  final int totalIncomeAmount;
  @JsonKey()
  @override
  final int totalSpendingAmount;
  @JsonKey()
  @override
  final List<BalanceHistory> incomeList;
  @JsonKey()
  @override
  final List<BalanceHistory> spendingList;

  @override
  String toString() {
    return 'SetBudgetState(now: $now, totalIncomeAmount: $totalIncomeAmount, totalSpendingAmount: $totalSpendingAmount, incomeList: $incomeList, spendingList: $spendingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetBudgetState &&
            const DeepCollectionEquality().equals(other.now, now) &&
            const DeepCollectionEquality()
                .equals(other.totalIncomeAmount, totalIncomeAmount) &&
            const DeepCollectionEquality()
                .equals(other.totalSpendingAmount, totalSpendingAmount) &&
            const DeepCollectionEquality()
                .equals(other.incomeList, incomeList) &&
            const DeepCollectionEquality()
                .equals(other.spendingList, spendingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(now),
      const DeepCollectionEquality().hash(totalIncomeAmount),
      const DeepCollectionEquality().hash(totalSpendingAmount),
      const DeepCollectionEquality().hash(incomeList),
      const DeepCollectionEquality().hash(spendingList));

  @JsonKey(ignore: true)
  @override
  _$SetBudgetStateCopyWith<_SetBudgetState> get copyWith =>
      __$SetBudgetStateCopyWithImpl<_SetBudgetState>(this, _$identity);
}

abstract class _SetBudgetState implements SetBudgetState {
  const factory _SetBudgetState(
      {required DateTime now,
      int totalIncomeAmount,
      int totalSpendingAmount,
      List<BalanceHistory> incomeList,
      List<BalanceHistory> spendingList}) = _$_SetBudgetState;

  @override
  DateTime get now;
  @override
  int get totalIncomeAmount;
  @override
  int get totalSpendingAmount;
  @override
  List<BalanceHistory> get incomeList;
  @override
  List<BalanceHistory> get spendingList;
  @override
  @JsonKey(ignore: true)
  _$SetBudgetStateCopyWith<_SetBudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}
