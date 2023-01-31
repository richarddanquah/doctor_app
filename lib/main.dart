import 'package:doctor_app/screens/doctor_details_screen.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/theme/doctor_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DoctorTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/doctor_details': (context) => const DoctorDetailsScreen()
      },
    );
  }
}
