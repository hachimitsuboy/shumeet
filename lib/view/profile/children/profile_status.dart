import 'package:flutter/material.dart';

class ProfileStatus extends StatelessWidget {
  const ProfileStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //TODO Firebaseから取ってくる
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.jpeg'),
          maxRadius: 35,
        ),
        Column(
          children: const [
            Text('12'),
            Text('投稿'),
          ],
        ),
        Column(
          children: const [
            Text('289'),
            Text('フォロー'),
          ],
        ),
        Column(
          children: const [
            Text('249'),
            Text('フォロワー'),
          ],
        ),
        Column(
          children: const [
            Text('3'),
            Text('趣味'),
          ],
        ),
      ],
    );
  }
}
