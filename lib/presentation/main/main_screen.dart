import 'package:flutter/material.dart';

import '/data/challenges_data.dart';
import '/presentation/main/widgets/challenge_tile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String routeName = '/main-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'UI Challenges',
          style:  TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: challenges.length,
        itemBuilder: (context, index) => ChallengeTile(
          challenge: challenges[index]
        ),
        separatorBuilder: (context, index) => const  Divider(),
      )
    );
  }
}