import 'package:flutter/material.dart';
import 'package:gudang_distribusi/adapter/animal_food.dart';
import 'package:gudang_distribusi/adapter/digital_products.dart';
import 'package:gudang_distribusi/adapter/offering_jobs.dart';
import 'package:gudang_distribusi/adapter/posts.dart';
import 'package:gudang_distribusi/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _CategoriesState();
}

class _CategoriesState extends State<Home> {
  Icon likeIcon = const Icon(
    Icons.favorite_outline,
    color: Colors.brown,
  );
  bool isLiked = false;
  @override
  void initState() {
    super.initState();
  }

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

  final style = Styles();
  final List<String> posts = ['Jack Dawson', 'Bill Gates', 'Hillary Clinton'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: style.searchBar(context),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 400, child: PostAdapter()),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
              child: Text(
                'Digital products',
                style: style.menuText,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: DigitalProducts(),
            ),
          ),SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
              child: Text(
                'Animal foods',
                style: style.menuText,
              ),
            ),
          ),SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: AnimalFood(),
            ),
          ),SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
              child: Text(
                'Offering jobs',
                style: style.menuText,
              ),
            ),
          ),SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: OfferingJobs(),
            ),
          ),
        ],
      ),
    );
  }
}
