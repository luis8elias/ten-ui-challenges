import 'package:flutter/material.dart';

import 'widgets/ig_post.dart';
import 'widgets/ig_stories_h_list.dart';
import 'widgets/ig_app_bar.dart';
import 'theme/theme.dart';

class Screen03 extends StatelessWidget {
  const Screen03({super.key});

  static const String routeName = 'challenge-03';

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: challenge003Theme, 
      child: Builder(
        builder: (context) {

          final theme = Theme.of(context);

          return  Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const IgAppBar(),
                  const IgStoriesHList(),
                  Container(
                    height: 0.5,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => const IgPost(),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      )
    );
  }
}