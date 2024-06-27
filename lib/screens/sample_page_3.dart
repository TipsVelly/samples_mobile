import 'package:flutter/material.dart';
import 'package:samples_mobile/widgets/product_list_page.dart';

class SamplePage3 extends StatelessWidget {
  const SamplePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          '샘플3: 제품리스트',
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 0,
      ),
      body: const ProductListPage(),
    );
  }
}
