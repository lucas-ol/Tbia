import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:tbia/models/main_world.dart';

import '../../models/main_overview_world.dart';

class World extends StatelessWidget {
  final MainOverviewWorld world;
  const World({super.key, required this.world});

  @override
  Widget build(BuildContext context) {
    return Text(world.name);
  }
}
