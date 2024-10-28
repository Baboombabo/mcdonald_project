import 'package:flutter/material.dart';
import 'package:mcdonald_project/screens/navbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red, // Custom primary color
        scaffoldBackgroundColor: Colors.white, // Custom background color
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red, // Custom AppBar background color
          titleTextStyle: TextStyle(
            color: Colors.white, // Custom AppBar text color
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0, // Remove shadow if needed
        ),
      ),
      title: 'Modern Navigator Demo',
      home: const NavBarScreen(),
    );
  }
}
