import 'package:flutter/material.dart';

import '/presentation/03/widgets/ig_story_circle.dart';


class IgStoriesHList extends StatelessWidget {
  const IgStoriesHList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10, (index) => index == 0 
          ? const MyIgStoryCircle()
          : const IgStoryCircle(),
        ),
      ),
    );
  }
}
