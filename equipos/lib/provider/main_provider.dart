import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
class MainProvider extends ChangeNotifier {
  String jugador = '';
  int equipo = 0;
  List<String> jugadores = [];

  set setEquipos(int valor) {
    equipo = valor;
    notifyListeners();
  }
  set setListaJugadores(String valor) {
    jugadores.add(valor);
    notifyListeners();
  }

  int get getEquipos => equipo;
  List<String> get getLista => jugadores;
}