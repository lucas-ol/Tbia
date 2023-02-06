import 'package:flutter/material.dart';
import 'package:tbia/models/main_world.dart';

import '../components/word/world_list.dart';
import '../injection.dart';
import '../models/main_overview_world.dart';
import '../models/main_overview_worlds.dart';
import '../services/worlds_api.dart';

class WorldPage extends StatefulWidget {
  final worldApi = getIt.get<WorldsApi>();
  WorldPage({super.key});

  @override
  State<WorldPage> createState() => _WorldPageState();
}

class _WorldPageState extends State<WorldPage> {
  final List<MainOverviewWorld> worldList = [];
  MainOverviewWorlds mainOverviewWorlds = MainOverviewWorlds();
  @override
  void initState() {
    super.initState();
    widget.worldApi.v3WorldsGet().then((value) {
      setState(() {
        //worldList.removeAt(worldList.length);
        mainOverviewWorlds = value.worlds;
        worldList.addAll(value.worlds.regularWorlds);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WorldList(worlds: worldList),
    );
  }
}
