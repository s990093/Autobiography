import 'package:autobiography/widget/ProjectIntroductionWidget.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, // 這裡不需要使用 mainAxisAlignment
          children: [
            ProjectIntroductionWidget(
              projectName: '校務通',
              projectContent: '重新建構校務通app與伺服器，讓大家有更好地體驗',
              projectTime: '年十月',
              projectDifficulty: '中間',
              projectIcon: Icon(Icons.info),
            ),
            ProjectIntroductionWidget(
              projectName: '個人部落格',
              projectContent: '打造數一數二的部落格，讓自己的魅力完美的呈現',
              projectTime: '今年一月',
              projectDifficulty: '中間',
              projectIcon: Icon(Icons.info),
            ),

            ProjectIntroductionWidget(
              projectName: '校園美食預購系統',
              projectContent: '打造一個校園預購系統，讓大家不用等待食物處理時間',
              projectTime: '去年十月',
              projectDifficulty: '困難',
              projectIcon: Icon(Icons.info),
            ),
            // Add your other projects here.
          ],
        ),
      ),
    );
  }
}
