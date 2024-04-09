import 'package:flutter/material.dart';


class StoreBoxWidget extends StatelessWidget {
  const StoreBoxWidget({
    super.key, required this.image,
  });

  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 470,
      width: 400,
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