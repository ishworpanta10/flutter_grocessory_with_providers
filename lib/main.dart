import 'package:flutter/material.dart';
import 'package:flutter_website_clone/providers/grocery_manager.dart';
import 'package:flutter_website_clone/providers/tabbar.dart';
import 'package:flutter_website_clone/screen/nav_home.dart';
import 'package:flutter_website_clone/theme/custom_theme.dart';
import 'package:provider/provider.dart';

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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => TabManager(),
          ),
          ChangeNotifierProvider(
            create: (context) => GroceryManager(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
