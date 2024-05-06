import 'package:flutter/material.dart';

import '/presentation/02/data/constants.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {

    final theme  = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPadding,
      ),
      child: Text(
        title,
        style: theme.textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}