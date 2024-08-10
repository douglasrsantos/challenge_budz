import 'package:flutter/material.dart';

import 'package:challenge_budz/core/injection/service_locator.dart';
import 'package:challenge_budz/presentation/widgets/app.dart';

void main() {
  debugInvertOversizedImages = true;
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencies();

  runApp(const App());
}
