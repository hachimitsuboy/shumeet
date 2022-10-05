import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/children/find_screen/pick_up_presenter_card.dart';

class PickUpPresenterCardView extends StatelessWidget {
  const PickUpPresenterCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pickUpPresenterCards = List.filled(8, const PickUpPresenterCard());
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: pickUpPresenterCards,
      ),
    );
  }
}
