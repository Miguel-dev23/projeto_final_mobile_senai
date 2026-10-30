import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const DistakApp());
}

class DistakApp extends StatelessWidget {
  const DistakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Distak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF0A192F), // Azul escuro
        scaffoldBackgroundColor: const Color(0xFFF3F4F6), // Cinza claro
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A192F),
          secondary: const Color(0xFFFF6F00), // Laranja
        ),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
