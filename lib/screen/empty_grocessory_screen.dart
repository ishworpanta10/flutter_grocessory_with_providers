import 'package:flutter/material.dart';
import 'package:flutter_website_clone/providers/tabbar.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 0.7 / 0.6,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2020/02/26/07/41/grocery-basket-4880912_960_720.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'No Groceries',
            style: TextStyle(fontSize: 21.0),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Shopping for ingredients?\n'
            'Tap the + button to write them down!',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          MaterialButton(
            textColor: Colors.white,
            child: const Text('Browse Recipes'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.green,
            onPressed: () {
              Provider.of<TabManager>(context, listen: false).goToRecipes();
            },
          ),
        ],
      ),
    );
  }
}
