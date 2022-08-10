import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeDemo extends StatelessWidget {
  const LiquidSwipeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(color: Colors.red,),
      Container(color: Colors.green,),
      Container(color: Colors.yellow,),
      Container(color: Colors.purple,)
    ];
    return MaterialApp(
        home: Scaffold(
          body: LiquidSwipe(pages: pages,),

    ));
  }
}
