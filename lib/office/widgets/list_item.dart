import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        color: Colors.green,
        child: Image.asset("assets/images/flutter_icon.png",),
      ),
    );
  }
}