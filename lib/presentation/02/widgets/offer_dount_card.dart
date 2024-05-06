import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/presentation/02/models/donut_model.dart';

class OfferDonutCard extends StatelessWidget {
  const OfferDonutCard({
    super.key,
    this.index = 0,
    required this.offerDonutModel
  });

  final int index; 
  final DonutModel offerDonutModel;

  @override
  Widget build(BuildContext context) {

    final theme  = Theme.of(context);

    return Stack(
      children: [
        Container(
          height: 325,
          width: 193,
          margin: const EdgeInsets.only(right: 45),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: index % 2 == 0 
            ? theme.colorScheme.secondary 
            : theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.onBackground.withOpacity(.07),
                offset: const Offset(0, 5),
                blurRadius: 10
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: theme.colorScheme.background,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'assets/02/heart1.svg',
                    semanticsLabel: 'Heart',
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      offerDonutModel.name,
                      style: theme.textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      offerDonutModel.description,
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$${offerDonutModel.price}',
                          style: theme.textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.lineThrough,
                            color: theme.colorScheme.onBackground.withOpacity(.42),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '\$${offerDonutModel.discountPrice}',
                          style: theme.textTheme.titleSmall!.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 20,
          left: 80,
          child: Image.asset(offerDonutModel.img),
        ),
      ],
    );
  }
}