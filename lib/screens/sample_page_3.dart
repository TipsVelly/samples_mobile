import 'package:flutter/material.dart';

class SamplePage3 extends StatelessWidget {
  const SamplePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Page 3'),
      ),
      body: const Center(
        child: Text('This is Sample Page 3'),
      ),
    );
  }
}
