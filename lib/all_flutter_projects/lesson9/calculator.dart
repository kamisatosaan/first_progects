import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
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

  void multiply() {
    setState(() {
      number *= 2;
    });
  }

  void divide() {
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
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: plus,
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: minus,
                child: const Text('-'),
              ),
              ElevatedButton(
                onPressed: multiply,
                child: const Text('x'),
              ),
              ElevatedButton(
                onPressed: divide,
                child: const Text('/'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: clear,
            child: const Text('C'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Calculator(),
  ));
}
