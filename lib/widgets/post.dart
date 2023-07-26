
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  String imageSource;
  Post({required this.imageSource});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 163.95,
        width: 163.95,
        child: Image.asset(imageSource, fit: BoxFit.cover,)
    );
  }
}