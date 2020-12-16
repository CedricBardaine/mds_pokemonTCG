import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  CustomAppBar(
    this.title, {
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title: Text('PokemonTCG'),
      // backgroundColor: Colors.black,

      title: Text(
        title,
        // style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.black,
      automaticallyImplyLeading: true,
    );
  }
}
