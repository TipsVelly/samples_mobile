import 'package:flutter/material.dart';

class SamplePage2 extends StatelessWidget {
  const SamplePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Page 2'),
      ),
      body: const Center(
        child: Text('This is Sample Page 2'),
      ),
    );
  }
}
