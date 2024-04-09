
import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key, required this.image,
  });

  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 100,
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