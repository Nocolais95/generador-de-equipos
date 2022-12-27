import 'package:equipos/provider/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generador de equipos',style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: ListView(
              children: [
                const SizedBox(height: 15),
                const Text('Seleccione el partido', style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _equiposBoton(context, 2),
                    _equiposBoton(context, 3),
                    ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _equiposBoton(context, 4),
                    _equiposBoton(context, 5),
                    ],
                ), 
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _equiposBoton(context, 6),
                    _equiposBoton(context, 7),
                  ],
                ), 
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _equiposBoton(context, 8),
                    _equiposBoton(context, 9),
                  ],
                ), 
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _equiposBoton(context, 10),
                    _equiposBoton(context, 11),
                  ],
                ), 
              ],
            ),
      ),
    );
  }

  ElevatedButton _equiposBoton(BuildContext context, int cant) {
    return ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(context, 'equipo');
          context.read<MainProvider>().setEquipos = cant;
        }, 
        child: Text('$cant v $cant', style: const TextStyle(fontSize: 20)
        ),
      );
  }
}