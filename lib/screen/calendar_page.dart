import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/utils/widget_utils.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...WidgetUtils.buildHeader('カレンダー'),
      ],
    );
  }
}
