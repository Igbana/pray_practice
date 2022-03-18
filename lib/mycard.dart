import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  Function onTap;
  String image = 'images/img.jpg';
  String caption = "Some Testing Text";
  MyCard({Key? key, required this.image, required this.caption, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 150,
          width: 150,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      caption,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}