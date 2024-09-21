import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // переменные создаются здесь
  double number = 0;

  void plus() {
    setState(() {
      number += 1;
    });
  }

  void minus() {
    setState(() {
      number -= 1;
    });
  }

  void multiple() {
    setState(() {
      number *= 2;
    });
  }

  void devide() {
    setState(() {
      number /= 2;
    });
  }

  void clear() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  plus();
                },
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  minus();
                },
                child: const Text('-'),
              ),
              ElevatedButton(
                onPressed: () {
                  multiple();
                },
                child: const Text('*'),
              ),
              ElevatedButton(
                onPressed: () {
                  devide();
                },
                child: const Text('/'),
              ),
              ElevatedButton(
                  onPressed: () {
                    clear();
                  },
                  child: const Text('0')),
            ],
          ),
          Container(
            height: 150,
            child: const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
          Container(
            height: 150,
            child: Image.asset('assets/arataki.jpg'),
          )
        ],
      ),
    );
  }
}
