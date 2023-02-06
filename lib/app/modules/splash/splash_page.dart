import 'package:flutter_modular/flutter_modular.dart';
import 'package:tbia/app/modules/main_tabled/home/home_module.dart';
import 'package:tbia/app/modules/main_tabled/main_tabled_module.dart';
import 'package:tbia/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final SplashStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Modular.to
          .navigate("${MainTabledModule.routerName}${HomeModule.routerName}/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[
          Center(
            child: Text("Splash"),
          )
        ],
      ),
    );
  }
}
