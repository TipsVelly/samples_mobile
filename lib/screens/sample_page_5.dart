import 'package:flutter/material.dart';
import 'package:samples_mobile/widgets/web_view_example.dart';

class SamplePage5 extends StatelessWidget {
  const SamplePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const WebViewComponent(
              url: 'http://tipsvalleydemo.iptime.org:3031/#/customer'),
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
