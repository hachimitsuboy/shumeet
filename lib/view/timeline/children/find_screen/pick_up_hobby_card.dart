import 'dart:math';

import 'package:flutter/material.dart';

class PickUpHobbyCard extends StatelessWidget {
  const PickUpHobbyCard({
    Key? key,
    required this.hobby,
  }) : super(key: key);

  final String hobby;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(
            (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
          ).withOpacity(0.8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO firebaseから人気の趣味を取ってくる
            Text(
              hobby,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Transform.rotate(
                  angle: 10 * pi / 180,
                  child: SizedBox(
                    height: 100,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      //TODO firebaseから人気の趣味を取ってくる
                      child: Image.asset(
                        'assets/images/hobby.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            )
            // Image.asset('assets/images/hobby.jpeg', fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
