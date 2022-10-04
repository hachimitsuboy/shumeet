import 'package:flutter/material.dart';

class InterestHobbyCard extends StatelessWidget {
  const InterestHobbyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width / 3,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back_image.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.7, 0.95],
                  colors: [
                    Colors.black12,
                    Colors.black54,
                    Colors.black87,
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: const [
              ColoredBox(
                color: Colors.blueAccent,
                //TODO firebaseから取ってくる
                child: Text('ユーザーネーム'),
              ),
              SizedBox(height: 120),
              //TODO firebaseから取ってくる
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/user.jpeg'),
              ),
              //TODO firebaseから取ってくる
              Text(
                '今日は京都の嵐山でサイクリングに行ってきました!!',
                style: TextStyle(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
