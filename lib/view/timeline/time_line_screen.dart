import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/find_screen.dart';
import 'package:shumeet/view/timeline/interest_screen.dart';

class TimeLineScreen extends StatelessWidget {
  const TimeLineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('タイムライン'),
            bottom: const TabBar(tabs: [
              Tab(child: Text('気になる')),
              Tab(child: Text('見つける')),
            ]),
          ),
          body: const TabBarView(children: [
            InterestScreen(),
            FindScreen(),
          ]),
        ));
  }
}
