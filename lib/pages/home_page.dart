import 'package:flutter/material.dart';
import 'package:youtube/widgets/post_builder.dart';
import 'package:youtube/widgets/tags.dart';

import '../repository/dummy.dart';
import '../widgets/home_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: getBody(),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade900)),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home_filled),
                    Text("Home", style: TextStyle(fontSize: 12))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.shortcut_sharp, color: Colors.grey),
                    Text(
                      "Shorts",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: const Icon(Icons.add, size: 30, color: Colors.grey),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.subscriptions_outlined, color: Colors.grey),
                    Text(
                      "Subscriptions",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.video_library_outlined, color: Colors.grey),
                    Text("Library", style: TextStyle(fontSize: 12, color: Colors.grey))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    final Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        const HomeAppBar(),
        const Tags(),
        Column(
          children: List.generate(posts.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: PostBuilder(size: size, post:posts[index]),
            );
          }),
        )
      ],
    );
  }
}
