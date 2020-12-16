import 'package:flutter/material.dart';
import 'package:mds_pokemonTCG/custom_app_bar.dart';

class PokemonDetails extends StatefulWidget {
  @override
  _PokemonDetailsState createState() => _PokemonDetailsState();
}

class _PokemonDetailsState extends State<PokemonDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('PokemonTCG'),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('img'),
                  Container(width: 8.0),
                  Text('name'),
                ],
              ),
            ),
            Expanded(
              child: Text('details'),
            ),
          ],
        ),
      ),
    );
  }
}
