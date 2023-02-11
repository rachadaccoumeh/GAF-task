import 'package:flutter/material.dart';
import 'package:gaf_task/GetStarted.dart';

import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/splashScreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/splashScreen': (context) => SplashScreen(),
      '/loginScreen': (context) => const LoginScreen(),
      '/': (context) => const HomeScreen(),
      '/getStarted': (context) => const GetStarted(),
    },
  ));
}
