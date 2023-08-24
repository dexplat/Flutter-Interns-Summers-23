import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interns/sessions/session_7/models/pokemon_response.dart';
import 'package:flutter_interns/sessions/session_7/services/pokemon/data_provider.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(PokemonInitial()) {
    on<FetchPokemons>(_fetchPokemons);
  }

  Future<void> _fetchPokemons(FetchPokemons event, Emitter<PokemonState> emit) async {
    emit(
      const PokemonLoading(),
    );
    try {
      final pokemons = await PokeProvider.fetchPokemons();
      emit(
        PokemonLoaded(data: pokemons),
      );
    } catch (e) {
      emit(
        PokemonError(
          message: e.toString(),
        ),
      );
    }
  }
}
