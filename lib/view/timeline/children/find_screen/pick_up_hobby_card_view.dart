import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/children/find_screen/pick_up_hobby_card.dart';

class PickUpHobbyCardView extends StatelessWidget {
  const PickUpHobbyCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pickUpHobbyList = ['サイクリング', '旅行', 'ボルダリング', 'キャンプ', 'サウナ', '山登り'];
    final pickUpHobbyCards = List.generate(
        6, (index) => PickUpHobbyCard(hobby: pickUpHobbyList[index])).toList();
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return pickUpHobbyCards[index];
        });
  }
}
