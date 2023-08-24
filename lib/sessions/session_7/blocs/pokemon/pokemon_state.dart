part of 'pokemon_bloc.dart';

sealed class PokemonState extends Equatable {
  final List<Pokemon>? data;
  final String? message;
  
  const PokemonState({
    this.data,
    this.message,
  });

  @override
  List<Object> get props => [];
}

final class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {
  const PokemonLoading() : super();
}

class PokemonLoaded extends PokemonState {
  const PokemonLoaded({
    required List<Pokemon> data,
  }) : super(data: data);
}

class PokemonError extends PokemonState {
  const PokemonError({
    required String message,
  }) : super(message: message);
}
