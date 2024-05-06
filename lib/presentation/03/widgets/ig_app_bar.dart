import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/presentation/03/data/constants.dart';

class IgAppBar extends StatelessWidget {
  const IgAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: kPadding * 0.5
          ),
          child: SizedBox(
            height: 40,
            width: 112,
            child: Image.asset(
              'assets/03/Instagram_logo.png'
            )
          ),
        ),
        Row(
          children: [
            IconButton(
              splashRadius: 20,
              onPressed: (){}, 
              icon: SvgPicture.asset(
                'assets/03/heart.svg'
              )
            ),
            IconButton(
              splashRadius: 20,
              onPressed: (){}, 
              icon: SvgPicture.asset(
                'assets/03/message.svg'
              )
            ),
          ],
        ),
      ],
    );
  }
}