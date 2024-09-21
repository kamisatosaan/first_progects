import 'package:flutter/material.dart';
import 'package:probnik/all_flutter_projects/second_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final String name = 'Arataki';

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.menu)),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SecondScreen()));
                              },
                              icon: const Icon(Icons.more_vert)),
                          // Icon(Icons.menu),
                          // Icon(Icons.more_vert)
                        ], // ТУТ КОРОЧЕ// //ЗАДАНИЕ ТАКОЕ, ВМЕСТО ОБЫЧНЫХ ИКОНОК СДЕЛАТЬ КНОПКИ-ИКОНКИ ЧТОБЫ МЫ МОГЛИ ПО НИМ ПЕРЕМЕЩАТЬСЯ НА ДРУГИЕ СТРАНИЦЫ //
                      ),
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/p.jpeg'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Arataki',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'UX/UI Designer',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [Text('8900'), Text('Income')],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [Text('5500'), Text('Expenses')],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [Text('800'), Text('Loan')],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'Overview',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Icon(
                    Icons.notification_add_outlined,
                    color: Colors.amber,
                    size: 35,
                  ),
                  Expanded(child: Container()),
                  const Text('Dec 22 2023'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.teal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(Icons.arrow_upward),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sent',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('sending payment to clients',
                            style: TextStyle(
                              color: Colors.tealAccent,
                            )
                            //fontWeight: FontWeight.bold),
                            )
                      ],
                    ),
                    const Text('120')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.teal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(Icons.arrow_downward),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Receive',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('reciving salary from company',
                            style: TextStyle(
                              color: Colors.tealAccent,
                            )
                            //fontWeight: FontWeight.bold),
                            )
                      ],
                    ),
                    const Text('250')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.teal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(Icons.money),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Loan',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('loan for the car                       ',
                            style: TextStyle(
                              color: Colors.tealAccent,
                            )
                            //fontWeight: FontWeight.bold),
                            )
                      ],
                    ),
                    const Text('80')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: ''),
        ],
      ),
    );
  }
}
