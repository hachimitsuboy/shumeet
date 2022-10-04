import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/children/interest_hobby_card.dart';

class InterestHobbyCardScrollView extends StatelessWidget {
  const InterestHobbyCardScrollView({
    Key? key,
    required this.hobby,
  }) : super(key: key);

  final String hobby;

  @override
  Widget build(BuildContext context) {
    final interestHobbyCars = List.filled(
        8,
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: InterestHobbyCard(),
        ));

    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hobby,
              style: const TextStyle(fontSize: 16, fontFamily: 'Roboto'),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: interestHobbyCars,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Divider(
              color: Colors.black12,
              thickness: 1.5,
            ),
          )
        ],
      ),
    );
  }
}
