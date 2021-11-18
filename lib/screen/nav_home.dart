import 'package:flutter/material.dart';
import 'package:flutter_website_clone/providers/tabbar.dart';
import 'package:flutter_website_clone/screen/grocery_screen.dart';
import 'package:flutter_website_clone/screen/home.dart';
import 'package:flutter_website_clone/screen/receipe_screen.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final List<BottomNavigationBarItem> _navItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
    const BottomNavigationBarItem(icon: Icon(Icons.book), label: "Receipe"),
    const BottomNavigationBarItem(icon: Icon(Icons.list), label: "To Buy"),
  ];

  static final List<Widget> navWidgets = [
    const Home(),
    const RecipesScreen(),
    const GroceryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: _navItems,
            currentIndex: tabManager.selectedIndex,
            onTap: (index) {
              tabManager.goToTab(index);
            },
          ),
          body: IndexedStack(
            index: tabManager.selectedIndex,
            children: navWidgets,
          ),
        );
      },
    );
  }
}
