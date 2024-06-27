import 'package:flutter/material.dart';
import 'package:samples_mobile/widgets/grid_view_custom_widget.dart';

class SamplePage7 extends StatelessWidget {
  const SamplePage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('샘플7: 그리드뷰'),
      ),
      body: const GridViewCustomWidget(),
    );
  }
}
