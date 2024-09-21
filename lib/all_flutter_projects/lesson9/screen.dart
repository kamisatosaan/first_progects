import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<Widget> screens = [const Home(), const Search(), const Person()];

  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(current_index),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            current_index = index;
          });
        },
        currentIndex: current_index,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.amber,
        // backgroundColor: Colors.white60,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tasks = [
      'Learn flutter',
      'To do homework',
      'Clean at',
      'Выбить Райден',
      'Изучить js',
      'Подготовиться к интервью',
      'Hello'
    ];
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text("${tasks[index]}"),);
      },
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search'),
    );
  }
}

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'Product designer',
      'Tsurumi area, Inazuma',
      '18 miles away'
    ];

    List<IconData> icons_s = [
      Icons.shopping_bag,
      Icons.location_on,
      Icons.local_airport
    ];
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/arataki.jpg')),
                borderRadius: BorderRadius.circular(20)),
          ),
          const Text(
            'Arataki Itto',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          ),
          const Text('27, Male'),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(icons_s[index]),
                          Text('${names[index]}')
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
