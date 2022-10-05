import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/children/interest_screen/interest_hobby_card_scroll_view.dart';

class InterestScreen extends StatelessWidget {
  const InterestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO Firebaseから利用者が登録している始めたい趣味を表示させる
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: const [
          InterestHobbyCardScrollView(hobby: 'サイクリング'),
          InterestHobbyCardScrollView(hobby: 'キャンプ'),
          InterestHobbyCardScrollView(hobby: '釣り'),
          Center(
            child: Icon(Icons.handshake_outlined,size: 50,),
          ),
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
