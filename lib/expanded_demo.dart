import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("ExpandedDemo"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ))
        ],
      ),
    ));
  }
}
