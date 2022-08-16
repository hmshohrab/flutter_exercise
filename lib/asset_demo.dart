import 'package:flutter/material.dart';

class AssetDemo extends StatelessWidget {
  const AssetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            body: Center(
              child:Image.network(
                      "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),


            )));
  }
}
