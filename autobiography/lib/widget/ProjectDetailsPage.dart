import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  final String projectName;
  final String projectContent;
  final String projectTime;
  final String projectDifficulty;

  const ProjectDetailsPage({
    Key? key,
    required this.projectName,
    required this.projectContent,
    required this.projectTime,
    required this.projectDifficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('詳細介紹 - $projectName'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 5,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ListTile(
                title: const Text(
                  '專案名稱',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(projectName),
              ),
              const SizedBox(height: 8),
              ListTile(
                title: const Text(
                  '內容',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(projectContent),
              ),
              const SizedBox(height: 8),
              ListTile(
                title: const Text(
                  '時間',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(projectTime),
              ),
              const SizedBox(height: 8),
              ListTile(
                title: const Text(
                  '難度',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(projectDifficulty),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
