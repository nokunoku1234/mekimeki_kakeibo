import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mekimeki_kakeibo/screen/home_page.dart';
import 'package:mekimeki_kakeibo/utils/original_color.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'メキメキ家計簿',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: OriginalColor.materialColor,
        fontFamily: 'RoundedMPlus',
      ),
      home: const HomePage(),
    );
  }
}