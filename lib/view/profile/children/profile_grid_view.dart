import 'package:flutter/material.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({Key? key}) : super(key: key);

  //TODO 投稿画像をFirebaseから取ってくる
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 12,
      itemBuilder: (context, index) {
        return Image.asset('assets/images/user.jpeg');
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
