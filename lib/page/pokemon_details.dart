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
      body: _thePokeModel != null
          ? Column(
              children: [
                Expanded(
                  flex: 15,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          _thePokeModel.name,
                          style: TextStyle(
                              fontSize: 32.0,
                              color: colorFromType(_thePokeModel.types[0]),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(height: 8.0),
                        Image.network(_thePokeModel.imageUrl),
                      ],
                    ),
                  ),
                ),
                // Container(height: 16.0),
                Expanded(
                  flex: 5,
                  child: Text('Numéro National du Pokédex : ' +
                      (_thePokeModel.nPN).toString()),
                ),
              ],
            )
          : Center(
              child: Padding(
              padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Text(
                "Problème ! Le service en ligne est probablement injoignable.",
                style: TextStyle(),
              ),
            )),
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

  Color colorFromType(String type) {
    switch (type) {
      case "Grass":
        return Colors.green;
        break;
      case "Fire":
        return Colors.red;
      case "Water":
        return Colors.blue;
      default: // "Colorless"
        return Colors.black;
    }
  }
}
