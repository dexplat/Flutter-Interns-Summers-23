import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_7/models/pokemon_response.dart';
import 'package:flutter_interns/sessions/session_7/services/pokemon/gateway.dart';

class PokeProvider {
  static final _client = Dio();

  static Future<List<Pokemon>> fetchPokemons() async {
    try {
      final raw = await _client.get(PokeGateway.url);
      if (raw.statusCode != 200) throw Exception('Failed to fetch pokemons');

      final data = jsonDecode(raw.data.toString()) as Map<String, dynamic>;

      List<Pokemon> pokemons = [];

      for (int i = 0; i < data['pokemon'].length; i++) {
        final pokemon =
            Pokemon.fromMap(data['pokemon'][i] as Map<String, dynamic>);
        pokemons.add(pokemon);
      }

      return pokemons;
    } catch (e) {
      debugPrint('---- $e ----');
      throw ('Failed to fetch pokemons');
    }
  }
}
