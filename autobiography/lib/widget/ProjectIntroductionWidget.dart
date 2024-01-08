import 'package:autobiography/widget/ProjectDetailsPage.dart';
import 'package:flutter/material.dart';

class ProjectIntroductionWidget extends StatelessWidget {
  final String projectName;
  final String projectContent;
  final String projectTime;
  final String projectDifficulty;
  final Icon projectIcon;

  const ProjectIntroductionWidget({
    super.key,
    required this.projectName,
    required this.projectContent,
    required this.projectTime,
    required this.projectDifficulty,
    required this.projectIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '專案名稱: $projectName',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(height: 8),
                  Text(
                    '時間: $projectTime',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '難度: $projectDifficulty',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProjectDetailsPage(
                            projectName: projectName,
                            projectContent: projectContent,
                            projectTime: projectTime,
                            projectDifficulty: projectDifficulty,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.info), // 在这里设置你想要的图标
                    label: const Text('查看詳細介紹'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
