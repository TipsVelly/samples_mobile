import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  final Color iconColor;
  const MainMenu({super.key, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '마켓붐',
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white.withOpacity(0.9),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const NoticeSection(),
          const SizedBox(height: 16),
          OrderTypeSection(
            iconColor: iconColor,
          ),
          const SizedBox(height: 16),
          MenuSection(
            iconColor: iconColor,
          ),
          const SizedBox(height: 16),
          CustomerServiceSection(iconColor: iconColor),
        ],
      ),
    );
  }
}

class NoticeSection extends StatelessWidget {
  const NoticeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text(
          '[공지] 신선식품 배송안내',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text('LS푸드\n국민은행 lsfood\n8997541111'),
      ),
    );
  }
}

class OrderTypeSection extends StatelessWidget {
  final Color iconColor;
  const OrderTypeSection({super.key, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.local_shipping,
              color: iconColor,
            ),
            title: const Text('직배송 주문'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.inbox,
              color: iconColor,
            ),
            title: const Text('택배배송 주문'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final Color iconColor;
  const MenuSection({super.key, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 3,
        children: [
          _buildMenuItem(Icons.receipt, '주문 내역', iconColor),
          _buildMenuItem(Icons.account_balance_wallet, '외상 잔액 관리', iconColor),
          _buildMenuItem(Icons.cancel, '취소/반품 내역', iconColor),
          _buildMenuItem(Icons.bar_chart, '통계', iconColor),
          _buildMenuItem(Icons.store, '매장정보', iconColor),
          _buildMenuItem(Icons.payment, '결제수단', iconColor),
          _buildMenuItem(Icons.settings, '설정', iconColor),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    IconData icon,
    String label, [
    Color iconColor = Colors.black,
  ]) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}

class CustomerServiceSection extends StatelessWidget {
  final Color iconColor;
  const CustomerServiceSection({super.key, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.headset_mic,
          color: iconColor,
        ),
        title: const Text('고객센터'),
        onTap: () {},
      ),
    );
  }
}
