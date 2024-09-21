import 'package:flutter/material.dart';

class MoveScreen extends StatelessWidget {
  const MoveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'Arataki',
      'Mabel',
      'Kokomi',
      'Poppy',
      'Junji',
      'Ito',
      'Clay',
      'Django',
      'Foxy',
      'Nuna'
    ];

    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          scrollDirection: Axis.vertical, // вертикально крутим вниз
          itemCount: 10,
          itemBuilder: (context, index) {
            return _buildPage(index, names);
          },
        ),
      ),
    );
  }

  Widget _buildPage(int index, names) {
    return Container(
      color: Colors.indigo,
      child: Center(
        child: Text(
          names[index],
          // '$index',
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
