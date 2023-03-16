import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fitWidth,
                height: 35,
              ),
              const Text(
                "YouTube",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications_none, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/person.jpg'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
