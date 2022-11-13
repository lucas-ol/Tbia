import 'package:flutter/material.dart';
import 'package:tbia/services/worlds_api.dart';

import '../injection.dart';
import '../models/main_characters.dart';
import '../models/main_overview_worlds.dart';
import '../services/characters_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final worldsApi = getIt.get<WorldsApi>();
  final charactersApi = getIt.get<CharactersApi>();

  MainOverviewWorlds mainWolds = MainOverviewWorlds();
  MainCharacters character = MainCharacters();
  Future getPlayer() async {
    final result = await charactersApi.v3CharacterNameGet("Kiote");
    setState(() {
      character = result.characters;
      debugPrint("${character.character.level}");
    });
  }

  Future getWolds() async {
    final result = await worldsApi.v3WorldsGet();
    setState(() {
      mainWolds = result.worlds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: getWolds, child: const Text("Buscar Mundos")),
        Text(mainWolds.playersOnline.toString()),
        SizedBox(
          height: 400,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: mainWolds.regularWorlds.length,
              itemBuilder: ((_, index) {
                final world = mainWolds.regularWorlds[index];
                return Text(world.name);
              })),
        )
      ]),
    );
  }
}
