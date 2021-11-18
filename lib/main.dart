import 'package:flutter/material.dart';
import 'package:flutter_website_clone/screen/nav_home.dart';
import 'package:flutter_website_clone/theme/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final theme = CustomTheme.light();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Website Clone',
      theme: theme,
      home: const HomePage(),
    );
  }
}
