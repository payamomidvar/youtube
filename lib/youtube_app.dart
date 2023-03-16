import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class YouTubeApp extends StatelessWidget {
  const YouTubeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
