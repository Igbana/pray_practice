import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pray/mycard.dart';

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
                  children: [
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
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
                  children: [
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
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
                  children: [
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),
                    MyCard(image: 'images/img.jpg', caption: 'Some testing text', onTap: () {},),

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

//TODO Add the category top bar