import 'package:flutter/material.dart';
import 'package:flutter_website_clone/theme/custom_theme.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          image: const DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixid="
              "MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=780&q=80",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Recipe Trends',
                    style: CustomTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      children: [
                        Chip(
                          label: Text('Healthy',
                              style: CustomTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print('delete');
                          },
                        ),
                        Chip(
                          label: Text('Vegan',
                              style: CustomTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print('delete');
                          },
                        ),
                        Chip(
                          label: Text('Carrots',
                              style: CustomTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
