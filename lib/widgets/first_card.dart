import 'package:flutter/material.dart';
import 'package:flutter_website_clone/theme/custom_theme.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1500099817043-86d46000d58f"
              "?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2."
              "1&auto=format&fit=crop&w=1887&q=80",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Text(
              "Editor\'s Choice",
              style: CustomTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 20,
              child: Text(
                "The Art of Dough",
                style: CustomTheme.darkTextTheme.headline2,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                "Learn to make the perfect bread.",
                style: CustomTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                "Ray Wenderlich",
                style: CustomTheme.darkTextTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
