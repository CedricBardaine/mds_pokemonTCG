import 'package:flutter/material.dart';
import 'package:mds_pokemonTCG/api/poke_api.dart';
import 'package:mds_pokemonTCG/custom_app_bar.dart';
import 'package:mds_pokemonTCG/model/poke_model.dart';

class PokemonDetails extends StatefulWidget {
  @override
  _PokemonDetailsState createState() => _PokemonDetailsState();

  final String _pokeName;

  PokemonDetails(this._pokeName);
  // PokemonDetails({Key key, @required this.pokeName}) : super(key: key);

}

// TODO: use expandeds instead of Row children
// TODO: improve layout with data
class _PokemonDetailsState extends State<PokemonDetails> {
  PokeModel _thePokeModel;

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
                  _thePokeModel != null
                      ? Image.network(_thePokeModel.imageUrl)
                      : Container(),
                  Container(width: 8.0),
                  // Text(widget._pokeName),
                  Text(_thePokeModel != null ? _thePokeModel.name : ''),
                ],
              ),
            ),
            Container(height: 16.0),
            Expanded(
              child: Text('Numéro National du Pokédex : ' +
                  (_thePokeModel != null ? _thePokeModel.nPN : '').toString()),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // super.initState();
    this.getPoke();
  }

  void getPoke() async {
    PokeModel newPokeModel = await getPokeInfo(widget._pokeName);
    setState(() {
      this._thePokeModel = newPokeModel;
    });
    print(_thePokeModel.toString());
  }
}
