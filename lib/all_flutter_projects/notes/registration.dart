
import 'package:flutter/material.dart';
import 'package:probnik/all_flutter_projects/notes/notes_screen.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = 'arataki@gmail.com';
  String password = 'aratakiitto';
  String text = '';

  void signIn() {
    if (email == emailController.text && password == passwordController.text) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NoteScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Неверный пароль или email'),
        ), // всплывающее окно
      ); // SnackBar
      // setState(() {
      //   text = 'Не верный пароль или email';
      // });
    }
  }
  void guest(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const NoteScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.indigo,
                radius: 50,
              ),
              const SizedBox(
                height: 40,
              ),
              textFormField('email', Icons.email, emailController),
              const SizedBox(
                height: 20,
              ),
              textFormField('password', Icons.lock, passwordController),
              const SizedBox(
                height: 20,
              ),
              elevatedButton('Завершить регистрацию', signIn),
              const SizedBox(
                height: 20,
              ),
              elevatedButton('Войти как гость', () {guest();}),
              Text('$text'),
              elevatedButton('выйти', () { Navigator.pop(context);})
            ],
          ),
        ),
      ),
    );
  }

  Widget textFormField(
      String label, IconData iconData, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        prefixIcon: Icon(iconData),
      ),
    );
  }

  Widget elevatedButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
