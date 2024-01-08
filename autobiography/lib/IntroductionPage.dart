import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Your Avatar
          const CircleAvatar(
            radius: 50,
            backgroundImage:
                NetworkImage('https://example.com/your_profile_image.jpg'),
          ),
          const SizedBox(height: 20),
          // Your Introduction
          const Text(
            'Hello! I am a passionate developer. '
            'These are some of the projects I have worked on.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // Your Life Photo
          Image.network(
            'https://example.com/your_life_photo.jpg',
            width: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
