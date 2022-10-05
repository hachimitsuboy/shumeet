import 'package:flutter/material.dart';
import 'package:shumeet/view/timeline/children/find_screen/presenter_post.dart';

class PickUpPresenterCard extends StatelessWidget {
  const PickUpPresenterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.6,
        height: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightBlueAccent),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: const [
                  //TODO firebaseから取ってくる
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/presenter.webp'),
                  ),
                  SizedBox(width: 10),
                  //TODO firebaseから取ってくる
                  Text(
                    'おおきづち',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const PresenterPost(),
              const SizedBox(height: 20),
              const PresenterPost(),
              const SizedBox(height: 20),
              const PresenterPost(),
              const SizedBox(height: 40),
              //TODO タップしたプレゼンターのプロフィール画面へ
              TextButton(
                  onPressed: () => debugPrint('もっと見てみる'),
                  child: const Text(
                    'もっと見てみる',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
