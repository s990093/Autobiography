import 'package:flutter/material.dart';

import 'widget/idnex.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntroductionWidget(),
            SizedBox(height: 20),
            // Your Life Photo
            ImageWithCaption(
              imagePath:
                  'assets/4874DCC6-F464-48EC-B890-DDB87EAF47E5_1_105_c.jpeg',
              caption: '比賽的照片',
            ),
            SizedBox(height: 20),
            ImageWithCaption(
              imagePath:
                  'assets/87E2DCF6-E5FB-4D63-9752-8243E3E4AA31_1_105_c.jpeg',
              caption: '與評審討論的照片',
            ),
          ],
        ),
      ),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(
              'assets/87E2DCF6-E5FB-4D63-9752-8243E3E4AA31_1_105_c.jpeg'),
        ),
        SizedBox(height: 20),
        Text(
          '賴泓瑋',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          '我是一個熱愛學習新技術、且喜歡製作小專題的人，也熱衷於參加各種研習，以提升自己的競爭力。我非常享受製作專題的過程，即使遇到挫折，我也能夠持續嘗試突破，最終完成一個讓我驕傲的成品。',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          '在大學期間，自己去找人一起做專題，音樂網站專案(13人)，校務通APP(六個學校)，創業與實踐-校園預購平台，以上專案都是擔任領導者。',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          '我希望透過不斷學習和成長，能夠不斷提升自己的技能和專業能力。加入你們的團隊，我相信我可以為團隊帶來許多的貢獻。我期待與團隊成員一起學習和成長，並創造出更有價值的產品和專案。',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          '聯絡資訊',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Lai09150915@gmail.com',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          '0987516972',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        Text(
          '活動與興趣',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          '慢跑 • 滑板 • 教書 • 玩樂團 • 旅行',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
