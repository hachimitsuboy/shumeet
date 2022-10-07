import 'package:flutter/material.dart';
import 'package:shumeet/view/message/message_screen.dart';
import 'package:shumeet/view/profile/profile_screen.dart';
import 'package:shumeet/view/setting/setting_screen.dart';
import 'package:shumeet/view/timeline/time_line_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  static const screenList = <Widget>[
    TimeLineScreen(),
    MessageScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'タイムライン',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'メッセージ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'プロフィール',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black45,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
