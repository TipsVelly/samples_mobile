import 'package:flutter/material.dart';
import 'package:samples_mobile/widgets/Login_screen.dart';

class SamplePage1 extends StatelessWidget {
  const SamplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('샘플1: 로그인 화면'),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 0,
      ),
      body: const LoginScreen(),
    );
  }
}
