import 'package:flutter/material.dart';

class ImageWithCaption extends StatelessWidget {
  final String imagePath;
  final String caption;

  const ImageWithCaption({
    Key? key,
    required this.imagePath,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              caption,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
