class PokeModel {
  String file;

  String name;

  List<dynamic> cards;

  PokeModel(this.file);

  PokeModel.fromJSON(Map<String, dynamic> json) {
    this.file = json['file'];
    this.name = json['name'];
    this.cards = json['cards'];
  }

  @override
  String toString() {
    return this.file.toString() +
        ' | ' +
        this.name.toString() +
        ' | ' +
        this.cards[0].toString();
  }
}
