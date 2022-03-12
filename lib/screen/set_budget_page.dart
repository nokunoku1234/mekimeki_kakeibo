import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mekimeki_kakeibo/component/text.dart';
import 'package:mekimeki_kakeibo/component/screen_scaffold.dart';
import 'package:mekimeki_kakeibo/entity/balance_history.dart';
import 'package:mekimeki_kakeibo/utils/original_color.dart';
import 'package:mekimeki_kakeibo/utils/provider.dart';
import 'package:mekimeki_kakeibo/utils/widget_utils.dart';

class SetBudgetPage extends StatelessWidget {
  const SetBudgetPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('SetBudgetPageをビルド');
    return ScreenScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetUtils.buildHeader('予算設定'),
          const SizedBox(height: 25),
          buildSelectedMonth(),
          const SizedBox(height: 25),
          ...buildIncomeList(),
          const SizedBox(height: 25),
          ...buildSpendingList(),
          Row(
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              const UsefulTxt(),
              MainText('月に使える金額:'),
              const SizedBox(width: 5),
              const UsefulAmountTxt(),
            ],
          )
        ],
      )
    );
  }

  Row buildSelectedMonth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
        ChangeMonthArrow(isForward: false,),
        ShowMonthText(),
        ChangeMonthArrow(),
      ],
    );
  }

  List<Widget> buildIncomeList() => [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainText('収入', fontSize: 18,),
        const TotalAmountTxt(),
      ],
    ),
    const SizedBox(height: 10),
    const AmountList()
  ];

  List<Widget> buildSpendingList() => [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainText('支出', fontSize: 18,),
        const TotalAmountTxt(isIncome: false,),
      ],
    ),
    const Expanded(child: AmountList(isIncome: false,))
  ];
}

class ShowMonthText extends ConsumerWidget {
  const ShowMonthText({Key? key}) : super(key: key);

  @override
  build(BuildContext context, WidgetRef ref) {
    print('ShowMonthTextをビルド');
    final DateTime date = ref.watch(setBudgetProvider).now;
    final String dateStr = DateFormat('yyyy/M').format(date);
    return MainText(dateStr);
  }
}

class ChangeMonthArrow extends ConsumerWidget {
  const ChangeMonthArrow({Key? key, this.isForward = true}) : super(key: key);
  final bool isForward;

  @override
  build(BuildContext context, WidgetRef ref) {
    print('ChangeMonthArrowをビルド');
    return GestureDetector(
      child: Icon(isForward ? Icons.arrow_forward_ios_rounded : Icons.arrow_back_ios_rounded, color: OriginalColor.subColor,),
      onTap: () {
        ref.read(setBudgetProvider.notifier).changeMonth(isForward);
        ref.read(setBudgetProvider.notifier).init();
      },
    );
  }
}

class TotalAmountTxt extends ConsumerWidget {
  const TotalAmountTxt({Key? key, this.isIncome = true}) : super(key: key);
  final bool isIncome;

  @override
  build(BuildContext context, WidgetRef ref) {
    const double fontSize = 22;
    const FontWeight fontWeight = FontWeight.w600;
    late final int totalAmount;
    if(isIncome) {
      //totalIncomeAmountが変更された時のみreBuildされる
      totalAmount = ref.watch(setBudgetProvider.select((value) => value.totalIncomeAmount));
      return IncomeAmountText(totalAmount, fontSize: fontSize, fontWeight: fontWeight,);
    } else {
      //totalSpendingAmountが変更された時のみreBuildされる
      totalAmount = ref.watch(setBudgetProvider.select((value) => value.totalSpendingAmount));
      return SpendingAmountText(totalAmount, fontSize: fontSize, fontWeight: fontWeight,);
    }

  }
}

class UsefulTxt extends ConsumerWidget {
  const UsefulTxt({Key? key}) : super(key: key);

  @override
  build(BuildContext context, WidgetRef ref) {
    final DateTime selectedDate = ref.watch(setBudgetProvider).now;
    final String selectedMonth = DateFormat('M').format(selectedDate);
    return MainText(selectedMonth);
  }

}

class UsefulAmountTxt extends ConsumerWidget {
  const UsefulAmountTxt({Key? key}) : super(key: key);

  @override
  build(BuildContext context, WidgetRef ref) {
    final int _totalIncomeAmount = ref.watch(setBudgetProvider).totalIncomeAmount;
    final int _totalSpendingAmount = ref.watch(setBudgetProvider).totalSpendingAmount;
    return DifferenceAmountText(_totalIncomeAmount - _totalSpendingAmount,
      fontSize: 25, fontWeight: FontWeight.w700,
    );
  }
}

class AmountList extends ConsumerWidget {
  const AmountList({Key? key, this.isIncome = true}) : super(key: key);
  final bool isIncome;

  @override
  build(BuildContext context, WidgetRef ref) {
    print('AmountListをビルド');
    const double listHeight = 40;
    const double borderWidth = 1;
    double? height;
    late List<BalanceHistory> historyList;
    if(isIncome) {
      historyList = ref.watch(setBudgetProvider.select((value) => value.incomeList));
      height = listHeight * 3 + borderWidth * 2;
    } else {
      historyList = ref.watch(setBudgetProvider.select((value) => value.spendingList));
    }
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
          border: Border.all(color: OriginalColor.subColor),
          borderRadius: BorderRadius.circular(8)
      ),
      child: SingleChildScrollView(
        physics: const RangeMaintainingScrollPhysics(),
        child: Column(
          children: List.generate(historyList.length, (index) {
            final int _amount = historyList[index].amount;
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: index % 2 == 0 ? OriginalColor.subColor.shade100 : null,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: listHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      const SizedBox(width: 5,),
                      MainText(historyList[index].category)
                    ],
                  ),
                  isIncome
                      ? IncomeAmountText(_amount)
                      : SpendingAmountText(_amount)
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}