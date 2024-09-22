import 'package:flutter/material.dart';
import 'package:food_panda/Screens/location_access.dart';
import 'package:food_panda/Screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // Routes
      routes: {"location_access": (context) => const LocationAccess()},
    );
  }
}
