import 'package:flutter/material.dart';

import 'package:challenge_budz/core/routes/routes.dart';
import 'package:challenge_budz/core/ui/ui.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
      title: 'Challenge Budz',
      theme: AppTheme.appTheme,
    );
  }
}
