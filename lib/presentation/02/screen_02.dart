import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'data/bottom_nav_items.dart';
import 'widgets/category_title.dart';
import 'widgets/donut_card.dart';
import 'widgets/offer_dount_card.dart';
import 'data/constants.dart';
import 'data/donuts.dart';
import 'data/offer_donuts.dart';
import 'theme/theme.dart';

class Screen02 extends StatelessWidget {
  const Screen02({super.key});

  static const String routeName = 'challenge-02';

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: challenge002Theme,
      child: Builder(
        builder: (context) {

          final theme  = Theme.of(context);
            
          return Scaffold(
            bottomNavigationBar:Padding(
              padding: const EdgeInsets.only(
                left: kPadding,
                right: kPadding,
                bottom: kPadding / 2
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(bottomNavItems.length, (index) => IconButton(
                  splashRadius: 25,
                  onPressed: (){}, 
                  icon: SvgPicture.asset(bottomNavItems[index])
                  ),
                )
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: kPadding,
                        left: kPadding,
                        right: kPadding
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Let\'s Gonuts!',
                                style: theme.textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Order your favourite donuts from here',
                                style: theme.textTheme.bodyMedium,
                              )
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset(
                                'assets/02/search.svg',
                                semanticsLabel: 'Search',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const CategoryTitle(
                      title: 'Today Offers',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 345,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(
                          left: 25
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: offerDonuts.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                          vertical: 20
                        ),
                          child: OfferDonutCard(
                            index : index,
                            offerDonutModel: offerDonuts[index],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CategoryTitle(
                      title: 'Donuts',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 171,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: donuts.length,
                        itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: DonutCard(
                            donutModel: donuts[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          );
        },
      ),
    );
  }
}