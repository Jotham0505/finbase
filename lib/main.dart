import 'package:finbase/screens/onboarding/onboarding1_screen.dart';
import 'package:finbase/screens/onboarding/onboarding2_screen.dart';
import 'package:finbase/screens/onboarding/onboarding3_screen.dart';
import 'package:finbase/screens/onboarding/onboarding4_screen.dart';
import 'package:finbase/screens/onboarding/onboarding5_screen.dart';
import 'package:finbase/screens/onboarding/onboarding6_screen.dart';
import 'package:finbase/screens/onboarding/onboarding7_screen.dart';
import 'package:finbase/screens/onboarding/onboarding8_screen.dart';
import 'package:finbase/screens/splash_screen.dart';
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
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Onboarding4Screen());
  }
}
