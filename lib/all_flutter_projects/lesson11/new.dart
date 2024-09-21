import 'package:flutter/material.dart';

class Person {
  final String name;
  final String smallPicture;
  final String bigPicture;

  Person({
    required this.name,
    required this.smallPicture,
    required this.bigPicture,
  });
}

class ContainerOne {
  final Color? color;
  final double? width;
  final double? height;
  final Widget? child;
  final Clip? clipBehavior;

  ContainerOne(
      {this.color,
      this.width,
      required this.height,
      required this.child,
      this.clipBehavior = Clip.none});

  void ontap() {
    print('hello');
  }
}

class Lesson11 extends StatefulWidget {
  const Lesson11({super.key});

  @override
  State<Lesson11> createState() => _Lesson11State();
}

class _Lesson11State extends State<Lesson11> {
  bool isColor = false;
  String name = 'arataki';

  void favorite() {
    setState(() {
      isColor = !isColor;
    });
  }

  List<Person> users = [
    Person(
        name: 'arataki_itto',
        smallPicture: 'assets/arataki.jpg',
        bigPicture: 'assets/arataki.jpg'),
    Person(
        name: 'sanjar',
        smallPicture: 'assets/sanjar.jpeg',
        bigPicture: 'assets/sanjar.jpeg'),
    Person(
        name: 'shirin',
        smallPicture: 'assets/p.jpeg',
        bigPicture: 'assets/shirin.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        // backgroundImage: AssetImage('assets/arataki.jpeg'),
                        radius: 35,
                      ),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                      '${users[index].smallPicture}'),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '${users[index].name}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Expanded(child: Container()),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return const AlertDialog(
                                              title:
                                                  Text('удалить публикацию?'),
                                            );
                                          });
                                    },
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 10),
                              child: InkWell(
                                onDoubleTap: () {
                                  favorite();
                                },
                                child: Container(
                                  height: 270,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              '${users[index].bigPicture}'))),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    favorite();
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: isColor ? Colors.red : Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.mode_comment_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(child: Container()),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.save_alt,
                                    color: Colors.white,
                                  ),
                                ),
                                // Expanded(child: Container()),
                                // const IconButtonWidget(
                                //     iconData: Icons.bookmark_border)
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
