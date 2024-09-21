import 'package:flutter/material.dart';
import 'package:probnik/all_flutter_projects/my_home_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              const CircleAvatar(
                // backgroundColor: Colors.purple,
                radius: 50,
                backgroundImage: AssetImage('assets/arataki.jpg'),
              ),
              const SizedBox(
                height: 70,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email Address',
                  hintText: 'Enter your email',
                  helperText: 'email',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                obscureText: true,
                // obscuringCharacter: '6',
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  labelText: 'password',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
              }, child: const Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
// дз закончить три кнопки и картинку
