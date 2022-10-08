import 'package:flutter/material.dart';
import 'package:shumeet/view/message/children/message_tile.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メッセージ'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'メッセージ検索',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //TODO Firebaseから取ってくる
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const MessageTile();
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
