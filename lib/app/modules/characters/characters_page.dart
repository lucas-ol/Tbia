import 'package:flutter_modular/flutter_modular.dart';
import 'package:tbia/app/modules/characters/characters_store.dart';
import 'package:flutter/material.dart';

class CharactersPage extends StatefulWidget {
  final String title;
  const CharactersPage({Key? key, this.title = 'CharactersPage'})
      : super(key: key);
  @override
  CharactersPageState createState() => CharactersPageState();
}

class CharactersPageState extends State<CharactersPage> {
  final CharactersStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}
