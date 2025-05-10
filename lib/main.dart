import 'package:flutter/material.dart';
import 'package:korean_language_app_new/screens/colors.dart';
import 'package:korean_language_app_new/screens/home_page.dart';

void main() {
  runApp(KoreanLanguaeApp());
}

class KoreanLanguaeApp extends StatelessWidget {
  const KoreanLanguaeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ColorsScreen(),
    );
  }
}
