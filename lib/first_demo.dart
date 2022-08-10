import 'package:english_words/english_words.dart'; // Add this line.
import 'package:flutter/material.dart';

class FirstDemo extends StatelessWidget {
  const FirstDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
        )
      ),
      home: const FirstDemoPage(), // With this text.
    );
  }
}

class FirstDemoPage extends StatefulWidget {
  const FirstDemoPage({Key? key}) : super(key: key);

  @override
  State<FirstDemoPage> createState() => _FirstDemoPageState();
}

class _FirstDemoPageState extends State<FirstDemoPage> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
          actions: [
            IconButton(
              onPressed: () {
                _pushPressed();
              },
              icon: const Icon(Icons.list),
              tooltip: "Saved Suggestions",
            )
          ],
        ),
        body: Center(child: _buildSuggestion()));
  }

  void _pushPressed() {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      final tiles = _saved.map((e) => ListTile(
            title: Text(
              e.asPascalCase,
              style: _biggerFont,
            ),
          ));
      final divided = tiles.isNotEmpty
          ? ListTile.divideTiles(
              tiles: tiles,
              context: context,
            ).toList()
          : <Widget>[];
      return Scaffold(
        appBar: AppBar(
          title: const Text("Saved Suggestion"),
        ),
        body: ListView(
          children: divided,
        ),
      );
    }));
  }

  Widget _buildSuggestion() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          // Add a one-pixel-high divider widget before each row
          // in the ListView.
          if (i.isOdd) {
            return const Divider();
          }
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            // ...then generate 10 more and add them to the
            // suggestions list.
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final _alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.red : null,
        semanticLabel: _alreadySaved ? "Remove from saved" : "Saved",
      ),
      onTap: () {
        setState(() {
          if (_alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}
