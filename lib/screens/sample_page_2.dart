import 'package:flutter/material.dart';
import 'package:samples_mobile/screens/main_menu.dart';

class SamplePage2 extends StatelessWidget {
  const SamplePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sample2: 메인메뉴'),
      ),
      body: const MainMenu(
        iconColor: Colors.orange,
      ),
    );
  }
}
