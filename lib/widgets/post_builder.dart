import 'package:flutter/material.dart';

import '../model/post.dart';
import '../pages/video_detail_page.dart';

class PostBuilder extends StatelessWidget {
  final Post post;
  final Size size;

  const PostBuilder({
    required this.post,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => VideoDetailPage(post: post),
              ),
            );
          },
          child: Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(post.thumbnail),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 40,
              height: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage(post.profile),
              ),
            ),
            SizedBox(
              width: size.width - 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    post.title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width - 120,
                        child: Text(
                          '${post.username} - ${post.view} views - ${post.date}',
                          maxLines: 2,
                          style: const TextStyle(
                            color: Colors.white38,
                            fontSize: 12,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            const Icon(Icons.more_vert, size: 20)
          ],
        )
      ],
    );
  }
}
