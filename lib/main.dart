import 'package:flutter/material.dart';
import 'package:tune_songs_app/views/home_page.dart';
import 'package:tune_songs_app/views/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),

      /*

         Songs in this Project made me sad when i was working 😄😄😄


       */
    );
  }
}


