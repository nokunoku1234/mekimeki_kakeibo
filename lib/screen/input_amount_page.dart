import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/utils/widget_utils.dart';

class InputAmountPage extends StatelessWidget {
  const InputAmountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...WidgetUtils.buildHeader('収支入力'),
      ],
    );
  }
}