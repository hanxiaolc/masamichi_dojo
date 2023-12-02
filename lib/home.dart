import 'package:flutter/material.dart';
import 'dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final List<Widget> _pages = <Widget>[
    const VocabularyPage(),
    const Icon(
      Icons.chat,
      size: 150,
    ),
    const Icon(
      Icons.camera,
      size: 150,
    ),
  ];

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: '单词',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_outlined),
            label: '训练',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '我',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
