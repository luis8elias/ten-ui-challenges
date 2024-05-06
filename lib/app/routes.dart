import 'package:go_router/go_router.dart';

import '/presentation/presentation.dart';

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: routes,
  initialLocation: MainScreen.routeName,
);

final routes =  [

  GoRoute(
    path: MainScreen.routeName,
    name: MainScreen.routeName,
    builder: (context, state) => const MainScreen(),
    routes: [
      GoRoute(
        path: Screen01.routeName,
        name: Screen01.routeName,
        builder: (context, state) => const Screen01(),
      ),
      GoRoute(
        path: Screen02.routeName,
        name: Screen02.routeName,
        builder: (context, state) => const Screen02(),
      ),
      GoRoute(
        path: Screen03.routeName,
        name: Screen03.routeName,
        builder: (context, state) => const Screen03(),
      ),
    ]
  ),
];