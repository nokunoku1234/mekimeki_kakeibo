import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/utils/widget_utils.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...WidgetUtils.buildHeader('設定'),
      ],
    );
  }
}