import 'package:flutter/material.dart';

class Styles {
  Color red = const Color.fromARGB(255, 255, 42, 60);
  Color redAccent = const Color.fromARGB(255, 255, 85, 100);
  Color white = Colors.white;

  TextStyle appBarText = const TextStyle(color: Colors.white, fontSize: 16);
  TextStyle linkColor =
      const TextStyle(color: Color.fromARGB(255, 9, 91, 158), fontSize: 12);
  TextStyle menuText = const TextStyle(fontSize: 16,fontWeight: FontWeight.bold);
  AppBar searchBar(BuildContext context) {
    AppBar searchBar = AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      title: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: TextField(
              style: const TextStyle(fontSize: 13),
              decoration: InputDecoration(
                  isDense: true,
                  fillColor: const Color.fromARGB(255, 233, 233, 233),
                  filled: true,
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontSize: 13),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none)),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/chats');
                },
                child: const Icon(
                  Icons.chat,
                  color: Colors.black,
                )),
          )
        ],
      ),
    );
    return searchBar;
  }

  AppBar customAppBar(String title,Widget? leading) {
    AppBar customAppBar = AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
    return customAppBar;
  }
}
