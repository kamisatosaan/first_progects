import 'package:flutter/material.dart';
import 'package:probnik/all_flutter_projects/my_home_page.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
            },
            icon: const Icon(Icons.account_balance_sharp),
          )
        ],
      ),
    );
  }
}
