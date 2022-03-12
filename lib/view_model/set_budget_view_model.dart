import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mekimeki_kakeibo/entity/balance_history.dart';
import 'package:mekimeki_kakeibo/state/set_budget_state.dart';

class SetBudgetStateNotifier extends StateNotifier<SetBudgetState> {
  SetBudgetStateNotifier() : super(SetBudgetState(now: DateTime.now()));

  void init() {
    state = state.copyWith(
      incomeList: [
        BalanceHistory(
          title: 'メンタ',
          category: '給与',
          icon: 'doll',
          historyTime: DateTime.now(),
          amount: 30000
        ),
      ],
      spendingList: [
        BalanceHistory(
          title: 'ラーメン',
          category: '食費',
          icon: 'dishes',
          historyTime: DateTime.now(),
          amount: 800
        ),
        BalanceHistory(
          title: 'ラーメン',
          category: '食費',
          icon: 'dishes',
          historyTime: DateTime.now(),
          amount: 800
        ),
      ]
    );

    List<BalanceHistory> incomeList = [
      BalanceHistory(
          title: 'メンタ',
          category: '給与',
          icon: 'doll',
          historyTime: DateTime.now(),
          amount: 30000
      ),
    ];
    List<BalanceHistory> spendingList = [
      BalanceHistory(
          title: 'ラーメン',
          category: '食費',
          icon: 'dishes',
          historyTime: DateTime.now(),
          amount: 800
      ),
      BalanceHistory(
          title: 'ラーメン',
          category: '食費',
          icon: 'dishes',
          historyTime: DateTime.now(),
          amount: 800
      ),
    ];
    int totalIncome = 0;
    int totalSpending = 0;
    for (var element in incomeList) {
      totalIncome+= element.amount;
    }
    for(var element in spendingList) {
      totalSpending+= element.amount;
    }

    state = state.copyWith(
      totalIncomeAmount: totalIncome,
      totalSpendingAmount: totalSpending,
      incomeList: incomeList,
      spendingList: spendingList
    );

  }

  void changeMonth(bool isForward) {
    DateTime _currentDate = state.now;
    late DateTime _targetMonth;
    if(isForward) {
      _targetMonth = DateTime(_currentDate.year, _currentDate.month + 1, 1);
    } else {
      _targetMonth = DateTime(_currentDate.year, _currentDate.month - 1, 1);
    }

    state = state.copyWith(now: _targetMonth);
  }

}