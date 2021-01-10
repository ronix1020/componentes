import 'package:componentes_app/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:icons_helper/icons_helper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = ListTile(

        title: Text(opt['texto']),
        leading: Icon(getMaterialIcon(name: opt['icon']), color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

        // final route = MaterialPageRoute(builder: (context)=>AlertPage());
        // Navigator.push(context, route);

        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;

  }
}
