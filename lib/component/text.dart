import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/utils/original_color.dart';
import 'package:mekimeki_kakeibo/utils/setting_utils.dart';

class MainText extends Text {
  MainText(
      this.txt, {Key? key,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w400
      })
      : super(
      txt,
      key: key,
      style: TextStyle(
        fontSize: fontSize,
        color: OriginalColor.materialColor,
        fontWeight: fontWeight,
      ));

  final String txt;
  final double fontSize;
  final FontWeight fontWeight;
}

class IncomeAmountText extends Text {
  IncomeAmountText(
      this.numTxt, {Key? key,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w400
      })
      : super(
      SettingUtils.numFormat.format(numTxt),
      key: key,
      style: TextStyle(
        fontSize: fontSize,
        color: OriginalColor.incomeAmountColor,
        fontWeight: fontWeight,
      ));

  final int numTxt;
  final double fontSize;
  final FontWeight fontWeight;
}

class SpendingAmountText extends Text {
  SpendingAmountText(
      this.numTxt, {Key? key,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w400
      })
      : super(
      SettingUtils.numFormat.format(numTxt),
      key: key,
      style: TextStyle(
        fontSize: fontSize,
        color: OriginalColor.spendingAmountColor,
        fontWeight: fontWeight,
      ));

  final int numTxt;
  final double fontSize;
  final FontWeight fontWeight;
}

class DifferenceAmountText extends Text {
  DifferenceAmountText(
      this.numTxt, {Key? key,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w400
      })
      : super(
      SettingUtils.numFormat.format(numTxt),
      key: key,
      style: TextStyle(
        fontSize: fontSize,
        color: OriginalColor.totalAmountColor,
        fontWeight: fontWeight,
      ));

  final int numTxt;
  final double fontSize;
  final FontWeight fontWeight;
}