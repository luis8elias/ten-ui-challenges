import 'package:flutter/material.dart';

import '/widgets/keyboard_dismisser.dart';

import 'widgets/text_field_01.dart';
import 'theme/theme.dart';

class Screen01 extends StatelessWidget {
  const Screen01({super.key});

  static const String routeName = 'challenge-01';

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Theme(
      data: challenge001Theme,
        child: Builder(
          builder: (context) {

            final theme  = Theme.of(context);
            
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/01/background.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding:  EdgeInsets.only(
                        left: 60,
                        right: 60,
                        bottom: MediaQuery.maybeViewInsetsOf(context)!.bottom
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 150,
                            ),
                            SizedBox(
                              height: 120,
                              child: Image.asset('assets/01/logo.png'),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              'PROTECT\nYOUR DATA\nWITH US.',
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                letterSpacing: 8,
                                wordSpacing: 2,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '230,100.04',
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' People trust us!',
                                    style: theme.textTheme.bodyMedium,
                                  )
                                ]
                              )
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            const TextField01(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              label: 'Email address'
                            ),
                            const TextField01(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                              label: 'Password'
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                minimumSize: const Size(4,4),
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                backgroundColor: theme.colorScheme.primary,
                              ),
                              onPressed: (){}, 
                              child: SizedBox(
                                width: double.maxFinite, 
                                child: Text(
                                  'SIGN UP',
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Already Signed Up? ',
                                style: Theme.of(context).textTheme.bodySmall,
                                children: [
                                  TextSpan(
                                    text: ' Log in',
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.primary,
                                    ),
                                  )
                                ]
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      )
    );
  }
}
