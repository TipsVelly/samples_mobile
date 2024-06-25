import 'package:flutter/material.dart';
import 'package:samples_mobile/wigets/main_menu.dart';

class SamplePage2 extends StatelessWidget {
  const SamplePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('sample2: 메인메뉴'),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 0,
      ),
      body: const MainMenu(
        iconColor: Colors.orange,
      ),
    );
  }
}
