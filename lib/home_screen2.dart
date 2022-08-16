import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(home: Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Image.network(
                "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.green,
                fit: BoxFit.fitHeight,
              ),
            ),
             titleSection2,
            buttonSection2,
            Container(
                padding: const EdgeInsets.all(2),
                child: Card(
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        child: buttonSection))),
            const ProductBox(
                name: "name",
                description: "description",
                price: 22,
                image:
                    "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),
          ],
        ),
      );
    }));
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(
                image,
                width: MediaQuery.of(context).size.width / 2,
              ),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Text(description),
                          Text("Price: " + price.toString()),
                        ],
                      )))
            ])));
  }
}

Widget titleSection2 = Container(
  padding: const EdgeInsets.all(2),
  color: Colors.white,
  child: Card(
    elevation: 2,
    child: Container(
      padding: const EdgeInsets.all(28),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "description",
                style: TextStyle(color: Colors.purple),
              )
            ],
          )),
          Icon(
            Icons.star,
            color: Colors.orange[600],
          ),
          const Text("45"),
        ],
      ),
    ),
  ),
);
Widget buttonSection2 = Container(
  padding: const EdgeInsets.all(2),
  child: Card(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: const [
                Icon(
                  Icons.add_call,
                  color: Colors.blue,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Audio Call"))
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: const [
                Icon(
                  Icons.video_call,
                  color: Colors.greenAccent,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Video Call"))
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: const [
                Icon(
                  Icons.message,
                  color: Colors.red,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10), child: Text("Message"))
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);
Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ),
    ],
  );
}
