import 'package:flutter/material.dart';
import 'package:pokemon/src/modelo/modelo.dart';
import 'package:pokemon/src/provider/provider.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int page = 0;
  late Future<List<Pokemon>> _pokemonsList;

  @override
  void initState() {
    super.initState();
    _pokemonsList = PokemonProvider().getPokemons(page);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: _pokemonsList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return PageView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return _cardPokemon(snapshot.data![index]);
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _cardPokemon(Pokemon pokemon) {
    return Card(
      child: Column(
        children: [
          Expanded(flex: 1, child: Text(pokemon.name)),
          Expanded(flex: 2, child: Image.network(pokemon.image)),
        ],
      ),
    );
  }
}
