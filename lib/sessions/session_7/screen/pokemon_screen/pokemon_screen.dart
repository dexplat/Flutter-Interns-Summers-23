import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interns/sessions/session_7/blocs/pokemon/pokemon_bloc.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({super.key});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  @override
  void initState() {
    super.initState();
    final pokeBloc = BlocProvider.of<PokemonBloc>(context);
    pokeBloc.add(FetchPokemons());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: BlocBuilder<PokemonBloc, PokemonState>(
        builder: (context, state) {
          if (state is PokemonLoading || state is PokemonInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PokemonLoaded) {
            final pokemons = state.data;
            return ListView.builder(
              itemCount: pokemons!.length,
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];
                return ListTile(
                  title: Text(pokemon.name),
                  subtitle: Text(pokemon.type.join(', ')),
                  leading: Image.network(pokemon.img),
                );
              },
            );
          } else {
            return Center(
              child: Text(state.message!),
            );
          }
        },
      ),
    );
  }
}
