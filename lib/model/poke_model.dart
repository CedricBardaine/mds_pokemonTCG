class PokeModel {
  String file;

  int nPN; // National Pokedex Number
  String name;
  String imageUrl; // imageUrlHiRes for best quality
  List<dynamic> types;

  List<dynamic> cards;

  PokeModel(this.file);

  PokeModel.fromJSON(Map<String, dynamic> json) {
    // this.file = json['file'];
    // this.name = json['name'];
    this.cards = json['cards'];

    this.nPN = this.cards[0]["nationalPokedexNumber"];
    this.name = this.cards[0]["name"];
    this.imageUrl = this.cards[0]["imageUrl"];
    this.types = this.cards[0]["types"];
  }

  @override
  String toString() {
    return this.file.toString() +
        ' | ' +
        this.nPN.toString() +
        ' | ' +
        this.name.toString() +
        ' | ' +
        this.imageUrl.toString() +
        ' | ' +
        this.types.toString() +
        ' || ' +
        this.cards[0].toString();
  }
}
