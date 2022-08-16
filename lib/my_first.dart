import 'package:flutter/material.dart';

class MyFirst extends StatelessWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First Page"),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo))],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "My First Page",
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0),
            ),
            RaisedButton(onPressed: () {}),
            ElevatedButton(
                onPressed: () {}, child: const Text("ElevatedButton"))
          ],
        ),
      ),
    );
  }
}
