import 'package:flutter/material.dart';


class BigBoxWidget extends StatelessWidget {
  const BigBoxWidget({
    super.key, required this.image,
  });

  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 600,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: image,
          ),
        ],
      ),
    );
  }
}