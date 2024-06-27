import 'package:flutter/material.dart';

class FindPasswordScreen extends StatelessWidget {
  const FindPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비밀번호 찾기'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '비밀번호를 잊으셨나요?\n다음 정보를 입력하시면, 등록된 휴대폰번호로 임시 비밀번호를 발송해드립니다.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: '아이디 (매장 전화번호)',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  labelText: '등록된 휴대폰번호',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,
                  child: const Text('확인',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '- 등록된 휴대폰 = 본인 매장의 사업주 휴대폰\n- 등록된 휴대폰을 모를 시, 담당 유통사에 문의\n- 담당자 변경 시, 유통사에 연락하여 (담당자 휴대폰) 번호 변경요청.',
                style: TextStyle(fontSize: 12, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
