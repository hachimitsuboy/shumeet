import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shumeet/view/message/message_screen.dart';
import 'package:shumeet/view/profile/profile_screen.dart';
import 'package:shumeet/view/setting/setting_screen.dart';
import 'package:shumeet/view/timeline/time_line_screen.dart';

final homeNavigationProvider = StateProvider((ref) => 0);

const screenList = <Widget>[
  TimeLineScreen(),
  MessageScreen(),
  ProfileScreen(),
  SettingScreen(),
];

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeNavigationProvider);

    return Scaffold(
      body: screenList.elementAt(currentIndex),
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
        currentIndex: currentIndex,
        onTap: (index) {
          ref.read(homeNavigationProvider.notifier).state = index;
        },
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
