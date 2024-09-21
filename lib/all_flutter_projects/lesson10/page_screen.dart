import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return GridView.builder(
                  itemCount: 30,
                  // itemCount: 10, //
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Container(
                        height: 100,
                        width: 100,
                        color: Colors.indigo,
                        child: Center(
                          child: Text('$index'),
                        ));
                  });
            }),
      ),
    );
  }
}
