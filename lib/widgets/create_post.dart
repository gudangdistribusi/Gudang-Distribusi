import 'package:flutter/material.dart';
import 'package:gudang_distribusi/styles.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: const Color.fromRGBO(121, 85, 72, 1),
      leading: Text(''),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          color: Colors.grey,
          child: TextField(
            style: TextStyle(color: Colors.black, fontSize: 14),
            decoration: InputDecoration(
              labelText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none)),
          ),
        ),
      ),
    ));
  }
}
