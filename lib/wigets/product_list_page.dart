import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          '직배송 주문',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // 검색 필터
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: '제조사, 상품명 검색',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    DropdownButtonFormField<String>(
                      value: '만두',
                      dropdownColor: Colors.white,
                      hint: const Text('카테고리 선택'),
                      items: ['만두', '김치']
                          .map((category) => DropdownMenuItem(
                                value: category,
                                child: Text(category),
                              ))
                          .toList(),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 상품 목록
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40.0,
                  ),
                  child: ListView(
                    children: const [
                      ProductItem(
                        name: '[CHD] 김치완만두소 3kg',
                        description: '3kg(4pk) (국내산)',
                        price: 17260,
                        minOrder: 3,
                        maxOrder: 6,
                        imagePath: 'assets/images/mandu_001.jpg',
                      ),
                      ProductItem(
                        name: '[CHD] 떡볶이',
                        description: '2kg(2pk)',
                        price: 66700,
                        minOrder: 3,
                        maxOrder: 6,
                        imagePath: 'assets/images/mandu_002.jpg',
                      ),
                      ProductItem(
                        name: '[우유] 그린콜 (450ml)',
                        description: '450ml*20ea (국내산)',
                        price: 4579,
                        minOrder: 1,
                        maxOrder: 20,
                        imagePath: 'assets/images/mandu_003.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // 주문하기 버튼
          const OrderButton(),
        ],
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('상품은 이렇게 정렬됩니다!'),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('상품목록은 기본적으로 최근 주문한 순으로 정렬되어 있습니다.'),
                          SizedBox(height: 8.0),
                          Text('즐겨찾는 상품이 있다면, 별 아이콘을 이용해 순서를 상단으로 올려보세요.'),
                          SizedBox(height: 8.0),
                          Text('유통사 추천 상품이 있을 경우, 가장 상단에 노출됩니다.'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('확인'),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange.shade700,
                ),
                child: const Text(
                  '주문버튼',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final int minOrder;
  final int maxOrder;
  final String imagePath; // 이미지 경로 필드 추가

  const ProductItem({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.minOrder,
    required this.maxOrder,
    required this.imagePath, // 이미지 경로 필드 추가
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  Text(description),
                  const SizedBox(height: 4.0),
                  Text(
                    '₩${NumberFormat('#,###').format(price)}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text('최소 $minOrder개 / 1일 최대 $maxOrder개'),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {},
                      ),
                      const Text('0'),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange.withOpacity(0.7),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '담기',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
