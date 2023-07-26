import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Widget child;
  Button({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(8)),
        child: child
    );
  }
}