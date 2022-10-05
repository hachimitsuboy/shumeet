import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/children/find_screen/pick_up_hobby_card_view.dart';
import 'package:shumeet/view/timeline/children/find_screen/pick_up_presenter_card_view.dart';

class FindScreen extends StatelessWidget {
  const FindScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: '趣味・プレゼンターを探す',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //TODO どういう基準で人気の趣味を選出するか？
            const Text(
              '人気の趣味🔥',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 600, child: PickUpHobbyCardView()),
            const SizedBox(height: 10),
            const Text(
              '人気のプレゼンター🔥',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            const PickUpPresenterCardView(),
            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
