import 'package:flutter/material.dart';

import '/presentation/03/theme/theme.dart';

class IgStoryCircle extends StatelessWidget {
  const IgStoryCircle({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 10.0,
        right: 3.0,
      ),
      child: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                //margin: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: bgStoryColors)
                )
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: theme.scaffoldBackgroundColor
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/03/story.jpeg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'juana12',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10
            ),
          )
        ],
      ),
    );
  }
}



class MyIgStoryCircle extends StatelessWidget {
  const MyIgStoryCircle({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 10.0,
        right: 3.0,
      ),
      child: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                color: Colors.transparent,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: theme.scaffoldBackgroundColor
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/03/story.jpeg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.scaffoldBackgroundColor,
                      width: 3.0
                    ),
                    color:  Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: theme.scaffoldBackgroundColor,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Tu historia',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10
            ),
          )
        ],
      ),
    );
  }
}