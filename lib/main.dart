import 'package:flutter/material.dart';

import '/app/app_theme.dart';
import '/app/routes.dart';

void main() {
  runApp(
    MaterialApp.router(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routeInformationProvider: goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
    ),
  );
}

