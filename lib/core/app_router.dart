import 'package:flutter/material.dart';
import '../ui/screens/splash_screen.dart';
import '../ui/screens/home_screen.dart';
import '../ui/screens/materials_screen.dart';
import '../modules/reading/reading_screen.dart';
import '../modules/math/math_screen.dart';

class AppRouter {
  static const String splash = '/';
  static const String home = '/home';
  static const String materials = '/materials';
  static const String reading = '/reading';
  static const String math = '/math';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case materials:
        return MaterialPageRoute(builder: (_) => const MaterialsScreen());
      case reading:
        return MaterialPageRoute(builder: (_) => const ReadingScreen());
      case math:
        return MaterialPageRoute(builder: (_) => const MathScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
