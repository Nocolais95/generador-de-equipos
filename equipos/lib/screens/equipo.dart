import 'package:equipos/provider/equipo_form_provider.dart';
import 'package:equipos/provider/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class EquipoScreen extends StatelessWidget {
  const EquipoScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final services = context.read<MainProvider>();
    List<String> jugadores = [];
    return ChangeNotifierProvider(
      create: (_) => EquipoFormProvider(services.jugador),
      child: const _EquipoScaffold());
  }
}

class _EquipoScaffold extends StatelessWidget {
  const _EquipoScaffold({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final nombre = context.read<EquipoFormProvider>();
    final jugadores = context.read<MainProvider>().getLista;
    return Scaffold(
      appBar: AppBar(
        title: Text('Arma tus equipos',style: TextStyle(fontSize: 22)),
        centerTitle: true,
        ),
      body: Column(
        children: [
          const SizedBox(height: 15,),
          const Text('Agregar jugador:', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: nombre.formKey,
              child: TextFormField(
                onChanged: (value) {
                  nombre.name = value;
                  context.read<MainProvider>().setListaJugadores = nombre.name;
                  },
                validator: (value) {
                  if (value == null || value.length < 1) {
                    return 'El nombre es obligatorio';
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Nombre del Jugador',
                  labelText: 'Nombre',
                ),
              )),
          ),
          ListView.builder(
            itemCount: jugadores.length ,
      itemBuilder: (context, index) => Column(
        children: [
          Text(jugadores[index]),
        ],
      )
      )
        ],
      )
   );
  }

  ListView _mostrarLista(List<String> jugadores) {
    return ListView.builder(
      itemCount: jugadores.length ,
      itemBuilder: (context, index) => Column(
        children: [
          Text(jugadores[index]),
        ],
      )
      );
  }
}