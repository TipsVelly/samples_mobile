import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          '직배송 주문',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Order Product Details
                Card(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '고르곤졸라 크럼블',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle product removal
                              },
                              child: const Icon(Icons.clear),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        const Text('500g 1ea | 이탈리아'),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: () {},
                                ),
                                const Text('4'),
                                IconButton(
                                  icon: const Icon(Icons.add),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            const Text(
                              '33,800원',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Delivery Date and Address
                Card(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '배송 요청일',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('2017-04-20'),
                            TextButton(
                              onPressed: () {
                                // Handle date change
                              },
                              child: const Text('날짜변경'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          '배송지 (직배송)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8.0),
                        const Text('서울 종로구 삼청동 28-102 1층 앤아베'),
                      ],
                    ),
                  ),
                ),
                // Special Requests
                const Card(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '요청사항',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '배송 및 상품에 대한 추가 요청사항 입력',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Payment Method Selection
                Card(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '결제수단 선택',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8.0),
                        Column(
                          children: [
                            RadioListTile<String>(
                              value: '외상 거래',
                              groupValue: '외상 거래',
                              onChanged: (value) {},
                              title: const Text('외상 거래'),
                            ),
                            RadioListTile<String>(
                              value: '신용카드',
                              groupValue: '외상 거래',
                              onChanged: (value) {},
                              title: const Text('신용카드'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Order Total Amount and Buttons
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '총 주문금액',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₩${NumberFormat('#,###').format(33800)}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle order cancellation
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                              ),
                              child: const Text('주문취소'),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle order submission
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                              ),
                              child: const Text('주문하기'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
