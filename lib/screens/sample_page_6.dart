import 'package:flutter/material.dart';
import 'package:samples_mobile/wigets/web_view_example.dart';

class SamplePage6 extends StatelessWidget {
  const SamplePage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const WebViewComponent(
              url: 'http://tipsvalleydemo.iptime.org:3031/#/mobileTest3'),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.deepOrange.shade300,
              child: Icon(
                Icons.home,
                color: Colors.white.withOpacity(0.8),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
