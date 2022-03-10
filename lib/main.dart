import 'package:flutter/material.dart';
import 'package:mekimeki_kakeibo/screen/set_budget_page.dart';
import 'package:mekimeki_kakeibo/utils/original_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'メキメキ家計簿',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: OriginalColor.materialColor
      ),
      home: const SetBudgetPage(),
    );
  }
}