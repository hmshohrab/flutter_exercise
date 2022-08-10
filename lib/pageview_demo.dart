import 'package:flutter/material.dart';
class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("PageView Demo"),backgroundColor: Colors.green,),
          body:PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
        )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}
