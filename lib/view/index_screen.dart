import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IndexScreen extends ConsumerWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index Screen'),
      ),
      body: Center(child: Text('ログイン'),),
    );
  }
}