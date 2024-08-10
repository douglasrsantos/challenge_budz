import 'package:go_router/go_router.dart';

import 'package:challenge_budz/core/injection/service_locator.dart';
import 'package:challenge_budz/presentation/controllers/controllers.dart';
import 'package:challenge_budz/presentation/pages/pages.dart';

final routes = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return HomePage(
          controller: getIt<HomeStore>(),
        );
      },
    ),
  ],
);
