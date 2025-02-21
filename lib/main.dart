import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyCoffee());
}

class MyCoffee extends StatelessWidget {
  const MyCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const SplashScreen(),
    );
  }
}
