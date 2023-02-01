import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_example/data/data.dart';
import 'package:ui_example/widgets/card.dart';
import 'package:ui_example/widgets/music_list_tile.dart';
import 'package:ui_example/widgets/section_heading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff0e1419),
            Color(0xff2d545c),
            Color(0xff1b3e47),
            Color(0xff141535),
            Color(0xff16214f),
            Color(0xff1a2a37),
            Color(0xff060102)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff050709),
          centerTitle: true,
          title: const Center(
            child: Text('Music App'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search...',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                const SectionHeading(
                  heading: "Playlists",
                  isMoreActive: false,
                ),
                SizedBox(
                  height: 240,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (_, int index) {
                      log(index);
                      return MusicCard(
                        imageUrl: data[index]['imageUrl']!,
                        title: data[index]['title']!,
                        duration: data[index]['duration']!,
                      );
                    },
                  ),
                ),
                const SectionHeading(
                  heading: "You may like",
                  isMoreActive: true,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return MusicListTile(
                      imageUrl: data2[index]["imageUrl"]!,
                      title: data2[index]["title"]!,
                      uploadedBy: data2[index]["uploadedBy"]!,
                    );
                  },
                  itemCount: data2.length,
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
