import 'package:flutter/material.dart';

class SamplePage1 extends StatelessWidget {
  const SamplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('로그인 화면')),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '유통사에서 발급된 계정으로 로그인',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  '마켓 봄',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const LoginForm(),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FindPasswordScreen()),
                    );
                  },
                  child: const Text('비밀번호 찾기',
                      style: TextStyle(color: Colors.grey)),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('초간편 회원가입',
                      style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const TextField(
          decoration: InputDecoration(
            labelText: '거래처 아이디',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
            labelText: '비밀번호',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            child: const Text('로그인',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ),
      ],
    );
  }
}

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
