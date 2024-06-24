import 'package:flutter/material.dart';
import 'package:samples_mobile/screens/web_view_example.dart';

class SamplePage4 extends StatelessWidget {
  const SamplePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Page 4: Web-View'),
      ),
      body: const WebViewExample(),
    );
  }
}
