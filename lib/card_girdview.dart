import 'package:flutter/material.dart';
import 'package:flutter_exercise/home_screen.dart';

class CardGridDemo extends StatelessWidget {
  const CardGridDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
         Card(
          color: Colors.yellow,
          elevation: 4,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(40))),
          child: Center(
            child: SizedBox(
              height: 500,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
         const HomeScreen()
      ],
    )));
  }
}
