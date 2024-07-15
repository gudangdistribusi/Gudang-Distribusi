import 'package:flutter/material.dart';

class PostAdapter extends StatefulWidget {
  const PostAdapter({super.key});

  @override
  State<PostAdapter> createState() => _PostAdapterState();
}

class _PostAdapterState extends State<PostAdapter> {
  Icon likeIcon = const Icon(
    Icons.favorite_outline,
    color: Colors.brown,
  );
  void setLike() {
    setState(() {
      if (isLiked) {
        likeIcon = const Icon(
          Icons.favorite_outline,
          color: Colors.brown,
        );
        isLiked = false;
      } else {
        likeIcon = const Icon(
          Icons.favorite,
          color: Colors.brown,
        );
        isLiked = true;
      }
    });
  }

  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 9,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.all(4),
            child: Material(
              color: Colors.white,
              elevation: 2,
              shadowColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOval(
                            child: Image.asset(
                          'assets/sample.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jack Sparrow'),
                              Text(
                                '28/8/2023',
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 13),
                              ),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                        width: 300,
                        child: Text(
                            'Hi everyone! I created this custom tailored shirt, feel free to check my page!')),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                        child: Image.asset(
                      'assets/kemeja.jpg',
                      width: 300,
                    )),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              setLike();
                            },
                            child: likeIcon),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Text('20k'),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.comment,
                              color: Colors.brown,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Text('1000'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
