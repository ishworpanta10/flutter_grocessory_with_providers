import 'package:flutter/material.dart';
import 'package:flutter_website_clone/screen/grocery_screen.dart';
import 'package:flutter_website_clone/screen/home.dart';
import 'package:flutter_website_clone/screen/receipe_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<BottomNavigationBarItem> _navItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
    const BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: "Receipe"),
    const BottomNavigationBarItem(icon: Icon(Icons.menu), label: "To Buy"),
  ];

  static final List<Widget> navWidgets = [
    const Home(),
    const RecipesScreen(),
    const GroceryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _navItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: navWidgets[_selectedIndex],
    );
  }
}
