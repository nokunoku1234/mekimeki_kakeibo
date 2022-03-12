import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/component/text.dart';

class WidgetUtils {

  static Widget buildHeader(String txt) {
    return MainText(txt, fontWeight: FontWeight.w500, fontSize: 28);
  }

}