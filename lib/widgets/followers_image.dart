import 'package:flutter/material.dart';

class FollowersAvatar extends StatelessWidget {
  String imageSource;
  FollowersAvatar({super.key, required this.imageSource});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: CircleAvatar(
          radius: 12,
          backgroundImage:
          AssetImage(imageSource),
        ),
      ),
    );
  }
}