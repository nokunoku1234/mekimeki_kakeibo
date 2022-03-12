import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mekimeki_kakeibo/entity/balance_history.dart';
part 'set_budget_state.freezed.dart';

@freezed
abstract class SetBudgetState with _$SetBudgetState {
  const factory SetBudgetState({
    required DateTime now,
    @Default(0) int totalIncomeAmount,
    @Default(0) int totalSpendingAmount,
    @Default([]) List<BalanceHistory> incomeList,
    @Default([]) List<BalanceHistory> spendingList,
  }) = _SetBudgetState;
}