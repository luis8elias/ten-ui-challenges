import 'package:flutter/material.dart';

import '/presentation/02/models/donut_model.dart';

class DonutCard extends StatelessWidget {
  const DonutCard({
    super.key,
    required this.donutModel
  });

  final DonutModel donutModel;

  @override
  Widget build(BuildContext context) {

    final theme  = Theme.of(context);

    return Stack(
      children: [
        Container(
          width: 138,
          margin: const EdgeInsets.only(
            right: 20,
            top: 40
          ),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
              bottom: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.onBackground.withOpacity(0.01),
                offset: const Offset(0, 2),
                spreadRadius: 15,
                blurRadius: 5
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                donutModel.name,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$${donutModel.price.toStringAsFixed(0)}',
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.primary
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 55,
          left: 20,
          child: Image.asset(
            donutModel.img,
            height: 104,
          ),
        )
      ],
    );
  }
}