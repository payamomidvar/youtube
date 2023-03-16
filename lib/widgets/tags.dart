import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);
  final List<String> tags = const [
    'All',
    'Developer programmer',
    'Movie',
    'Gaming',
    'Music',
    'Sports'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Row(
          children: tags
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Chip(
                    label: Text(
                      item,
                      style: item == 'Movie'
                          ? const TextStyle(color: Colors.black)
                          : const TextStyle(color: Colors.white),
                    ),
                    backgroundColor: item == 'Movie'
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF272727),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
