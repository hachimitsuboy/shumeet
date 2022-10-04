import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/children/interest_hobby_card.dart';

class InterestScreen extends StatelessWidget {
  const InterestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final interestHobbyCars = List.filled(8, const Padding(
      padding: EdgeInsets.all(8.0),
      child: InterestHobbyCard(),
    ));

    //TODO Firebaseから利用者が登録している始めたい趣味を表示させる
    return SingleChildScrollView(
      child: SizedBox(
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text('#サイクリング'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: interestHobbyCars,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
