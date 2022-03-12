import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mekimeki_kakeibo/screen/calendar_page.dart';
import 'package:mekimeki_kakeibo/screen/input_amount_page.dart';
import 'package:mekimeki_kakeibo/screen/report_page.dart';
import 'package:mekimeki_kakeibo/screen/set_budget_page.dart';
import 'package:mekimeki_kakeibo/screen/setting_page.dart';
part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int selectedIndex,
    @Default([
      SetBudgetPage(),
      InputAmountPage(),
      CalendarPage(),
      ReportPage(),
      SettingPage()
    ]) List<Widget> screenList,
  }) = _HomeState;
}