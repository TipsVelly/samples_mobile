import 'package:flutter/material.dart';
import 'package:samples_mobile/screens/sample_page_1.dart';
import 'package:samples_mobile/screens/sample_page_2.dart';
import 'package:samples_mobile/screens/sample_page_3.dart';
import 'package:samples_mobile/screens/sample_page_4.dart';

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
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UI Sample App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MenuButton(
                title: 'Sample1: 로그인 화면',
                icon: Icons.login,
                onTap: () {
                  Navigator.pushNamed(context, '/sample1');
                },
              ),
              const SizedBox(height: 10),
              MenuButton(
                title: 'Sample2: 메인메뉴',
                icon: Icons.menu_book,
                onTap: () {
                  Navigator.pushNamed(context, '/sample2');
                },
              ),
              const SizedBox(height: 10),
              MenuButton(
                title: 'Sample Page 3',
                icon: Icons.pages,
                onTap: () {
                  Navigator.pushNamed(context, '/sample3');
                },
              ),
              const SizedBox(height: 10),
              MenuButton(
                title: '샘플4: web-view',
                icon: Icons.web,
                onTap: () {
                  Navigator.pushNamed(context, '/sample4');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, color: Colors.white),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      label: Text(
        title,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
