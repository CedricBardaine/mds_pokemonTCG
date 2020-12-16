import 'package:flutter/material.dart';
import 'package:mds_pokemonTCG/custom_app_bar.dart';
import 'package:mds_pokemonTCG/page/list_of_all.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar('PokemonTCG'),
        body: ListOfAll(),
      ),
    );
  }
}
