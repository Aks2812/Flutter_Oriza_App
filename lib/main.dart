import 'package:auth_oriza/Screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oriza Auth',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen(),
    );
  }
}
