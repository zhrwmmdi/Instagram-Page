import 'package:flutter/material.dart';

class Highlight extends StatelessWidget {
  final String text;
  final String imageSource;

  Highlight({super.key, required this.text, required this.imageSource});

  @override
  Widget build (BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(imageSource),
                        radius: 25,
                      ),
                    )
                ),
              ),
            )
          ],
        ),
        Text(
          text, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),

      ],

    );
  }
}