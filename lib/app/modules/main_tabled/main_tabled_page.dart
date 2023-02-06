import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tbia/app/modules/main_tabled/main_tabled_store.dart';
import 'package:flutter/material.dart';

class MainTabledPage extends StatefulWidget {
  final String title;
  const MainTabledPage({Key? key, this.title = 'MainTabledPage'})
      : super(key: key);
  @override
  MainTabledPageState createState() => MainTabledPageState();
}

class MainTabledPageState extends State<MainTabledPage> {
  late final MainTabledStore _store;

  @override
  void initState() {
    super.initState();
    _store = Modular.get();
  }

  MainTabledPageState();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const RouterOutlet(),
        bottomNavigationBar: Observer(
            builder: (context) => BottomNavigationBar(
                    onTap: (value) => _store.changePageIndex(value),
                    currentIndex: _store.currentIndex,
                    items: const [
                      BottomNavigationBarItem(
                          label: "", icon: Icon(Icons.fireplace_rounded)),
                      BottomNavigationBarItem(
                          label: "", icon: Icon(Icons.fireplace_rounded))
                    ])),
      ),
    );
  }
}
