import 'package:flutter/material.dart';
import 'package:probnik/all_flutter_projects/my_home_page.dart';
import 'package:probnik/all_flutter_projects/notes/registration.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
                child: const Text('first_project')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Registration()));
                },
                child: const Text('second_project'))
          ],
        ),
      ),
    );
  }
}
