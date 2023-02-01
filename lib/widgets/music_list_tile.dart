// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MusicListTile extends StatelessWidget {
  const MusicListTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.uploadedBy,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String uploadedBy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.black.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.01),
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.03),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          alignment: Alignment.center,
          child: ListTile(
            leading: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Image(
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl)),
            ),
            title: Text(title),
            subtitle: Text(uploadedBy),
            trailing: const Icon(Icons.more_vert_rounded),
          ),
        ),
      ),
    );
  }
}
