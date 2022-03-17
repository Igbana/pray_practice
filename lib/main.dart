import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Listen",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.chat_bubble_2)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.profile_circled)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Pray"),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: "For you"),
          BottomNavigationBarItem(
              icon: Icon(Icons.nightlight_round), label: "Sleep"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: "Podcasts"),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Heroes of the Bible: Judges",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Bedtime Bible: Jesus",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sleep Psalms",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO Make the classes collect text and image as variables
//TODO Add the category top bar

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 150,
        width: 150,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomCenter,
                  child: Text(
                    "Some Testing Text",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),)),
            ),
          ),
        ),
      ),
    );
  }
}
