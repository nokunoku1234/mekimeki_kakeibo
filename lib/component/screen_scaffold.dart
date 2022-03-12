import 'package:flutter/material.dart';

class ScreenScaffold  extends StatelessWidget {
  const ScreenScaffold({Key? key, required this.child, this.appbar}) : super(key: key);
  final Widget child;
  final AppBar? appbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(width: double.infinity, child: child),
      )),
    );
  }
}
