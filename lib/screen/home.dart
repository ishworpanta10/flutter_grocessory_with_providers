import 'package:flutter/material.dart';
import 'package:flutter_website_clone/widgets/first_card.dart';
import 'package:flutter_website_clone/widgets/second_card.dart';
import 'package:flutter_website_clone/widgets/third_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 20),
              FirstCard(),
              SizedBox(height: 20),
              SecondCard(),
              SizedBox(height: 20),
              ThirdCard(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
