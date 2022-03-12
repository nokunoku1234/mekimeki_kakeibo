import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/utils/widget_utils.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...WidgetUtils.buildHeader('レポート')
      ],
    );
  }
}