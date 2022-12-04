import 'package:flutter/material.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => null,
      child: const Center(
        child: Text('プロフィールを編集'),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.black38,
        elevation: 0,
      ),
    );
  }
}
