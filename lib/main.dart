import 'package:flutter/material.dart';
import 'package:food_ui/ui/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              onBackground: const Color(0xFFF37B2D),
              seedColor: const Color(0xFFF37B2D),
              primary: const Color(0xFFFFFDFD),
              onPrimary: const Color(0xFFEFD8D1)),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}
