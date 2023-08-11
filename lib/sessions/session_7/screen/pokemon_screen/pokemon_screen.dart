import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_7/models/pokemon_response.dart';
import 'package:flutter_interns/sessions/session_7/services/pokemon/data_provider.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({super.key});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {

  List<Pokemon>? pokemons;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final pokemons = await PokeProvider.fetchPokemons();
    setState(() {
      this.pokemons = pokemons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: pokemons == null ? const Center(
        child: CircularProgressIndicator(),
      ) : ListView.builder(
        itemCount: pokemons!.length,
        itemBuilder: (context, index) {
          final pokemon = pokemons![index];
          return ListTile(
            title: Text(pokemon.name),
            subtitle: Text(pokemon.type.join(', ')),
            leading: Image.network(pokemon.img),
          );
        },
      )
    );
  }
}