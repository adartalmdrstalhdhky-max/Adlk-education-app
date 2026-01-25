import 'package:flutter/material.dart';
import 'services/local_db/hive_service.dart';
import 'core/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة التخزين المشفّر
  await HiveService().init();

  runApp(const AdlkApp());
}

class AdlkApp extends StatelessWidget {
  const AdlkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adlk',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.initialRoute,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
    );
  }
}
