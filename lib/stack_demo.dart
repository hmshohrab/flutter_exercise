import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 400,
                height: 500,
                color: Colors.red,
              ),
              const Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
