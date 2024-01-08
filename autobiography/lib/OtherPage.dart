import 'package:flutter/material.dart';

import 'widget/idnex.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          MyInterestWidget(
            category: '運動',
            content: '跑步',
            icon: Icons.directions_run,
          ),
          MyInterestWidget(
            category: '運動',
            content: '打桌球',
            icon: Icons.sports_tennis_sharp,
          ),
          MyInterestWidget(
            category: '興趣',
            content: '作專案',
            icon: Icons.work,
          ),
          MyInterestWidget(
            category: '看書',
            content: '人間失格',
            icon: Icons.book,
          ),
          MyInterestWidget(
            category: '看書',
            content: '沒有色彩的多崎作',
            icon: Icons.book,
          ),
          MyInterestWidget(
            category: '電影',
            content: '分手的勇氣',
            icon: Icons.movie,
          )
        ],
      ),
    ));
  }
}
