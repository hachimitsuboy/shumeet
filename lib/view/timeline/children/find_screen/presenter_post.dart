import 'package:flutter/material.dart';

class PresenterPost extends StatelessWidget {
  const PresenterPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                //TODO firebaseから取ってくる
                child: Image.asset(
                  'assets/images/hobby.jpeg',
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(width: 10),
          const Expanded(
            flex: 2,
            ///TODO firebaseから取ってくる
            child: Text(
              '黒金山にキャンプ行ってきたぜ！',
              style: TextStyle(fontSize: 12, color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
