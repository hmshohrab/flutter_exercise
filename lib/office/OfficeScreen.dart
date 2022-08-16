import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'widgets/list_item.dart';

void main() {
  runApp(const ListViewPage());
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  void onPress() {
    if (kDebugMode) {
      print("OnPress clicked");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
          backgroundColor: Colors.green,
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Input your name",
                    hintText: "Hello"),
              ),
            ),
            RaisedButton(
              onPressed: onPress,
              child: const Text("Hello"),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            ElevatedButton(onPressed: onPress, child: const Text("World")),
            const ListItem(),
            ListItem(),
            ListItem(),
            ListItem(),
            ListItem(),
            ListItem(),
            ListItem(),
            ListItem(),
            ListItem(),
            ListItem(),
          ],
        ),
      ),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.

    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            "Hello Flutter",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              print("You clicked back button");
            },
          ),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            foregroundColor: Colors.red,
            child: Image.network(
                "https://tabris.com/wp-content/uploads/2021/06/jetpack-compose-icon_RGB.png"),
          ),
        ),
      ),
    );
  }
}
