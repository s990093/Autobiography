import 'package:autobiography/IntroductionPage.dart';
import 'package:autobiography/OtherPage.dart';
import 'package:autobiography/ProjectsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const IntroductionPage(),
    const ProjectsPage(),
    const OtherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('賴泓瑋的自傳'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '介紹',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: '專案',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: '其他',
          ),
        ],
      ),
    );
  }
}
