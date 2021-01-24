import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mds_pokemonTCG/api/poke_api.dart';
import 'package:mds_pokemonTCG/model/poke_model.dart';
import 'package:mds_pokemonTCG/page/pokemon_details.dart';

class ListOfAll extends StatefulWidget {
  @override
  _ListOfAllState createState() => _ListOfAllState();
}

class _ListOfAllState extends State<ListOfAll> {
  PokeModel _thePokeModel;

  final customTFController =
      TextEditingController(); // used to retrieve the value of the text field.

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
            child: TextField(
              controller: customTFController,
              onChanged: (text) {
                setState(() {}); // rebuild the ListView.
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Recherche',
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: _buildButtonsList(context),
            ),
          ),
        ],
      ),
    );
  }

  // It has no notable effect.
  // @override
  // void dispose() {
  //   customTFController.dispose();
  //   super.dispose();
  // }

  List<Widget> _buildButtonsList(context) {
    List<Widget> retButtonList = new List<Widget>();
    List<String> filteredNameList = _getFilteredNameList();

    for (int i = 0; i < filteredNameList.length; i++) {
      retButtonList.add(new RaisedButton(
        onPressed: () async {
          log('Clicked on ' + filteredNameList[i]);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PokemonDetails(filteredNameList[i])));
        },
        child: Text(filteredNameList[i], style: TextStyle(color: Colors.white)),
        color: i % 2 == 0 ? Colors.black : Colors.grey[900],
      ));
    }
    return retButtonList;
  }

  List<String> nameList =
      "Bulbasaur,Ivysaur,Venusaur,Charmander†,Charmeleon,Charizard,Squirtle,Wartortle,Blastoise,Caterpie,Metapod,Butterfree,Weedle,Kakuna,Beedrill,Pidgey,Pidgeotto,Pidgeot,Rattata,Raticate,Spearow,Fearow,Ekans,Arbok,Pikachu,Raichu,Sandshrew,Sandslash,Nidoran♀,Nidorina,Nidoqueen,Nidoran♂,Nidorino,Nidoking,Clefairy,Clefable,Vulpix,Ninetales,Jigglypuff,Wigglytuff,Zubat,Golbat,Oddish,Gloom,Vileplume,Paras,Parasect,Venonat,Venomoth,Diglett,Dugtrio,Meowth,Persian,Psyduck,Golduck,Mankey,Primeape,Growlithe,Arcanine,Poliwag,Poliwhirl,Poliwrath,Abra,Kadabra,Alakazam,Machop,Machoke,Machamp,Bellsprout,Weepinbell,Victreebel,Tentacool,Tentacruel,Geodude,Graveler,Golem,Ponyta,Rapidash,Slowpoke,Slowbro,Magnemite,Magneton,Farfetch'd,Doduo,Dodrio,Seel,Dewgong,Grimer,Muk,Shellder,Cloyster,Gastly,Haunter,Gengar,Onix,Drowzee,Hypno,Krabby,Kingler,Voltorb,Electrode,Exeggcute,Exeggutor,Cubone,Marowak,Hitmonlee,Hitmonchan,Lickitung,Koffing,Weezing,Rhyhorn,Rhydon,Chansey,Tangela,Kangaskhan,Horsea,Seadra,Goldeen,Seaking,Staryu,Starmie,Mr. Mime,Scyther,Jynx,Electabuzz,Magmar,Pinsir,Tauros,Magikarp,Gyarados,Lapras,Ditto,Eevee[d],Vaporeon,Jolteon,Flareon,Porygon,Omanyte,Omastar,Kabuto,Kabutops,Aerodactyl,Snorlax,Articunod,Zapdosd,Moltresd,Dratini,Dragonair,Dragonite,Mewtwod,Mew"
          .split(',');

  List<String> _getFilteredNameList() {
    return nameList
        .where((element) => element
            .toLowerCase()
            .contains(customTFController.text.toLowerCase()))
        .toList();
  }
}
