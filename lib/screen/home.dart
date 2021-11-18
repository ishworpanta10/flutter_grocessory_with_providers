import 'package:flutter/material.dart';
import 'package:flutter_website_clone/widgets/circle_avatar.dart';
import 'package:flutter_website_clone/widgets/first_card.dart';
import 'package:flutter_website_clone/widgets/second_card.dart';
import 'package:flutter_website_clone/widgets/third_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //     child: GridView.builder(
      //   itemCount: 42,
      //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 200),
      //   itemBuilder: (context, index) {
      //     return const CircleImage(
      //       imageRadius: 80,
      //       imageProvider: NetworkImage("https://images.unsplash.com/photo-"
      //           "1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwa"
      //           "G90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
      //     );
      //   },
      // )
      child: ListView(
        children: [
          SizedBox(
            height: 350,
            child: ListView(
              primary: false,
              padding: const EdgeInsets.all(14),
              scrollDirection: Axis.horizontal,
              children: const [
                FirstCard(),
                SizedBox(width: 10),
                SecondCard(),
                SizedBox(width: 10),
                ThirdCard(),
              ],
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            primary: false,
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleImage(
                  imageProvider: NetworkImage(
                      "https://images.unsplash.com/photo-"
                      "1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwa"
                      "G90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Made this delicious pizza this morning",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      "10 min ago",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
