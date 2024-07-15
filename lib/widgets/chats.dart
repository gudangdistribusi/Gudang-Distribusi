import 'package:flutter/material.dart';
import 'package:gudang_distribusi/styles.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Styles().customAppBar(
            'Chats',
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios))));
  }
}
