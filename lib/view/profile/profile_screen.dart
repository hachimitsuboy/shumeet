import 'package:flutter/material.dart';
import 'package:shumeet/view/profile/children/profile_edit_button.dart';
import 'package:shumeet/view/profile/children/profile_status.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 45),
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'はちみつぼーい',
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(height: 15),
        ProfileStatus(),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text('はちみつ大好き23歳'),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: ProfileEditButton(),
        ),
      ],
    );
  }
}
