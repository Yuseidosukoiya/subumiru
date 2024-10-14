import 'package:flutter/material.dart';
import 'widget/buttons/primary_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subumiru2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NotoSansJP',
      ),
      home: const MyHomePage(title: 'Subumiru2 Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  void _onButtonPressed(BuildContext context) {
    print('ボタンが押されました');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('ボタンが押されました')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'サブミルのトップページだよ fontは700!',
              style: TextStyle(
                fontFamily: 'NotoSansJP',
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), 
            PrimaryButton(
              onPressed: () => _onButtonPressed(context),
              label: 'Button', 
            ),
          ],
        ),
      ),
    );
  }
}
