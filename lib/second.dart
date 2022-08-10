import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MySecondPage()
    );
  }
}

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Second Dart"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height/2,
                width: width/2,
                color: Colors.red,
              ),
              const SizedBox(height: 10,),
              Container(
                height: 200,
                width: 400,
                color: Colors.red,
              ),
              const SizedBox(height: 10,),
              Container(
                height: 200,
                width: 400,
                color: Colors.red,
              ),
              const SizedBox(height: 10,),
              Container(
                height: 200,
                width: 400,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}

