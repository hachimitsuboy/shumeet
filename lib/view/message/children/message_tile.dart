import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      //TODO メッセージ相手の名前を表示
      title: Text('本田翼'),
      //TODO メッセージ相手とのやり取りを表示
      subtitle: Text(
        '初めまして！ゲームを趣味にしてみたくて連絡させていただきました！'
            'お時間よろしい日にレクチャーなどしていただけませんか？',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      //TODO メッセージ相手のアイコンを表示
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user.jpeg'),
      ),
    );
  }
}
