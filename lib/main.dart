import 'package:flutter/material.dart';
import 'package:samples_mobile/screens/home_page.dart';
import 'package:samples_mobile/screens/sample_page_1.dart';
import 'package:samples_mobile/screens/sample_page_2.dart';
import 'package:samples_mobile/screens/sample_page_3.dart';
import 'package:samples_mobile/screens/sample_page_4.dart';
import 'package:samples_mobile/screens/sample_page_5.dart';
import 'package:samples_mobile/screens/sample_page_6.dart';
import 'package:samples_mobile/screens/sample_page_7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Sample App',
      theme: ThemeData(
        primaryColor: Colors.orange,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/sample1': (context) => const SamplePage1(),
        '/sample2': (context) => const SamplePage2(),
        '/sample3': (context) => const SamplePage3(),
        '/sample4': (context) => const SamplePage4(),
        '/sample5': (context) => const SamplePage5(),
        '/sample6': (context) => const SamplePage6(),
        '/sample7': (context) => const SamplePage7(),
      },
    );
  }
}
