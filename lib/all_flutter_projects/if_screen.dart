import 'package:flutter/material.dart';

class IfScreen extends StatefulWidget {
  const IfScreen({super.key});

  @override
  State<IfScreen> createState() => _IfScreenState();
}

class _IfScreenState extends State<IfScreen> {
  // == (равно)
  // != (не равно)
  // > (больше)
  // < (меньше)
  // >= (больше или равно)
  // <= (меньше или равно)

  // && (логическое И)
  // || (логическое ИЛИ)
  // ! (логическое НЕ)
  int a = 5;
  int b = 5;
  int c = 5;
  int d = 10;

  void press() {
    if (a == b && a == c && b == c) {
      print('They are equel');
    } else if (a == b || a == d) {
      print('hello');
    } else if (a > b) {
    } else {
      print('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  press();
                },
                child: const Text('press'))
          ],
        ),
      ),
    );
  }
}
