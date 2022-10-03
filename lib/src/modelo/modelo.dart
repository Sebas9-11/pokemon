class PokemonList {
  List<Pokemon> pokemons = [];

  PokemonList();

  PokemonList.fromJsonList(jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pokemon = Pokemon.fromJsonMap(item);
      pokemons.add(pokemon);
    }
  }
}

class Pokemon {
  String name;
  String image;

  Pokemon({
    required this.name,
    required this.image,
  });

  factory Pokemon.fromJsonMap(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      image: json['sprites']['other']['home']['front_shiny'],
    );
  }
}
