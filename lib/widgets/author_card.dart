import 'package:flutter/material.dart';
import 'package:flutter_website_clone/theme/custom_theme.dart';

import 'circle_avatar.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                CircleImage(
                  imageProvider: widget.imageProvider,
                  imageRadius: 28,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.authorName,
                        style: CustomTheme.lightTextTheme.headline2,
                      ),
                      Text(
                        widget.title,
                        style: CustomTheme.lightTextTheme.headline3,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon:
                Icon(_isFav ? Icons.favorite_outlined : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
            onPressed: () {
              setState(() {
                _isFav = !_isFav;
              });
              final snackBar = SnackBar(
                duration: const Duration(milliseconds: 300),
                content: Text(
                    _isFav ? 'Added to Favorite' : 'Remove from favourite'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
