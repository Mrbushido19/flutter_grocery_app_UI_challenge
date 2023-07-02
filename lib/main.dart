import 'package:flutter/material.dart';
import 'pages/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon App',
      theme: ThemeData(
          textTheme: TextTheme(
              bodyMedium: TextStyle(fontSize: 18, color: Colors.green)),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(background: Colors.white)),
      home:
          SplashScreen(), // Définit le SplashScreen comme l'écran de démarrage
    );
  }
}
