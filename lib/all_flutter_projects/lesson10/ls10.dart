import 'package:flutter/material.dart';

class Lesson10 extends StatelessWidget {
  const Lesson10({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> words = ['a', 'b', 'c'];

    // Map<String, String> names01 = {'Apple': 'sdf', 'Babusi':'wsdf'};
    List<Color> colors = [
      Colors.amber,
      Colors.blue,
      Colors.deepPurple,
      Colors.black
    ];

    // Map<String, dynamic> names = {
    //   '1': ['Arataki', 27, 0700519798, 'arataki@gmail.com'],
    //   '2': ['Kokomi', 25, 0700519798, 'arataki@gmail.com'],
    //   '3': ['Gorou', 27, 0700519798, 'arataki@gmail.com']
    // };
    //
    return Scaffold(
      body: SafeArea(
          child: GridView.builder(
              itemCount: words.length,
              // itemCount: 10, //
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.indigo,
                  child: Column(
                    children: [
                      Text(words[index]),
                    ],
                  ),
                );
              })),
    );
  }
}
