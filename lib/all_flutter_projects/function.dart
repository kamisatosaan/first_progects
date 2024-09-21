import 'package:flutter/material.dart';
import 'package:probnik/all_flutter_projects/my_home_page.dart';

class Func extends StatefulWidget {
  const Func({super.key});

  @override
  State<Func> createState() => _FuncState();
}

class _FuncState extends State<Func> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = 'arataki@gmail.com';
  String password = '12345678';
  String text = '';

  void signIn() {
    if (email == emailController.text && password == passwordController.text) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else {
      setState(() {
        text = 'Не верный пароль или email';
      });
    }
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              textField('email', Icons.email, emailController),
              const SizedBox(
                height: 20,
              ),
              textField('password', Icons.lock, passwordController),
              const SizedBox(
                height: 40,
              ),
              button('Sign in', () {
                signIn();
              }),
              const SizedBox(
                height: 20,
              ),
              button('Guest', () {}),
              Text('$text'),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(String text_email_pasword, IconData iconData,
      TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: text_email_pasword,
          prefixIcon: Icon(iconData)),
    );
  }

  Widget button(String text, Function() onTap) {
    return ElevatedButton(onPressed: onTap, child: Text(text));
  }
}
