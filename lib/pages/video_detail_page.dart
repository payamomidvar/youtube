import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'package:video_player/video_player.dart';

import '../repository/dummy.dart';
import '../model/post.dart';
import '../theme/colors.dart';
import '../widgets/post_builder.dart';

class VideoDetailPage extends StatefulWidget {
  final Post post;

  const VideoDetailPage({required this.post, Key? key}) : super(key: key);

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  late VideoPlayerController _controller;
  late Post post;

  @override
  void initState() {
    post = widget.post;
    super.initState();
    _controller = VideoPlayerController.asset(post.videoUrl)
      ..initialize().then((_) {
        setState(() {
          _controller.play();

        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        _controller.value.isInitialized
            ? Stack(
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: IconButton(
                      icon: Icon(
                        _controller.value.isPlaying ? null : Icons.play_arrow,
                        size: 60,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    left: 5,
                    child: VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                    ),
                  ),
                ],
              )
            : Container(
                width: size.width,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(post.thumbnail),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width - 80,
                        child: Text(
                          post.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "${post.view} views - ${post.date}",
                        style: const TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(post.profile),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              post.username,
                              style: TextStyle(
                                color: white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.3,
                              ),
                            ),
                          ),
                          Text(
                            post.subscriberCount,
                            style: const TextStyle(
                              color: Colors.white38,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          const Chip(
                            backgroundColor: Colors.white60,
                            label: Text(
                              "Subscribe",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            likeBuilder(),
                            const SizedBox(width: 10),
                            chipBuilder(
                                title: 'Share', icon: LineIcons.shareSquare),
                            const SizedBox(width: 10),
                            chipBuilder(
                                title: 'Download', icon: LineIcons.download),
                            const SizedBox(width: 10),
                            chipBuilder(title: 'Clip', icon: LineIcons.cut),
                            const SizedBox(width: 10),
                            chipBuilder(title: 'Save', icon: LineIcons.save),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ...posts
                    .where((element) => element.id != post.id)
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: PostBuilder(size: size, post: item),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget chipBuilder({required String title, required IconData icon}) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.grey.shade900,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: Row(
          children: [
            Icon(icon, size: 22),
            const SizedBox(width: 5),
            Text(
              title,
              style: const TextStyle(color: Colors.white70, fontSize: 15),
            ),
          ],
        ));
  }

  Widget likeBuilder() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.grey.shade900,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: Row(
          children: [
            const Icon(LineIcons.thumbsUp, size: 22),
            const SizedBox(width: 5),
            Text(
              post.likeCount,
              style: const TextStyle(color: Colors.white70, fontSize: 15),
            ),
            const SizedBox(width: 5),
            const SizedBox(
              height: 20,
              child: VerticalDivider(color: Colors.white70, thickness: 1.5),
            ),
            const SizedBox(width: 5),
            const Icon(LineIcons.thumbsDown, size: 22),
          ],
        ));
  }
}
