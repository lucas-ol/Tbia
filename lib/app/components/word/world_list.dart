import 'package:flutter/widgets.dart';
import 'package:tbia/app/components/word/world.dart';
import 'package:tbia/app/domain/models/main_overview_world.dart';

class WorldList extends StatelessWidget {
  final List<MainOverviewWorld> worlds;

  const WorldList({super.key, required this.worlds});

  @override
  Widget build(BuildContext context) {
    return worlds.isNotEmpty
        ? GridView.count(
            mainAxisSpacing: 0,
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            children: worlds.map((e) {
              return World(world: e);
            }).toList(),
          )
        : const Text("List");
  }
}
