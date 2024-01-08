import 'package:flutter/material.dart';

class MyInterestWidget extends StatelessWidget {
  final String category;
  final String content;
  final IconData icon;

  const MyInterestWidget({
    Key? key,
    required this.category,
    required this.content,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(icon),
              title: Text(
                '做的類型: $category',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '內容: $content',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: MyInterestWidget(
//           category: 'Flutter 開發',
//           content: '我喜歡使用 Flutter 開發應用程序，創建漂亮和交互性的界面。',
//           icon: Icons.code,
//         ),
//       ),
//     ),
//   );
// }
