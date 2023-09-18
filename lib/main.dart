import 'package:flutter/material.dart';
import 'config/app_theme.dart';

import 'Pages/Home/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppTheme appTheme = AppTheme(selectedColor: 1);

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dino-App',
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: appTheme.theme,
    );
  }
}
