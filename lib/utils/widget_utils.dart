import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/component/text.dart';

class WidgetUtils {

  static List<Widget> buildHeader(String txt) => [
    MainText(txt, fontWeight: FontWeight.w500, fontSize: 28),
    const SizedBox(height: 25,)
  ];

}