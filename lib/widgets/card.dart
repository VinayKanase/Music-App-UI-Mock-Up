import 'package:flutter/material.dart';
import 'package:ui_example/widgets/card_title.dart';

class MusicCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String duration;
  const MusicCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            width: 240,
            height: 240,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
          CardTitle(
            title: title,
            duration: duration,
          ),
        ],
      ),
    );
  }
}
