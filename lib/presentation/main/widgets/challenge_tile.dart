import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/models/challenge_model.dart';

class ChallengeTile extends StatelessWidget {
  const ChallengeTile({
    super.key,
    required this.challenge
  });

  final ChallengeModel challenge;

  @override
  Widget build(BuildContext context) {
    
    final theme = Theme.of(context);

    return SizedBox(
      height: 130,
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: theme.colorScheme.primary,
                  radius: 20,
                  child: Text(
                    challenge.number,
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  challenge.title,
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
            Image.asset(
              'assets/${challenge.imgPreview}',
            ),
          ],
        ),
        onTap: () => GoRouter.of(context).goNamed(challenge.route),
      ),
    );
  }
}