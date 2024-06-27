import 'package:flutter/material.dart';

class GridViewCustomWidget extends StatelessWidget {
  const GridViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 한 줄에 두 개의 타일을 배치
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: 6, // 버튼의 수
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // 버튼 클릭 시 실행할 코드
            print('Button $index clicked');
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'Button $index',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
