import 'dart:math';

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'La descripcion de la tarjeta siguiente es una de las ventajas que no tenemos que no hay que hacer'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Ok',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'Entendido',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final random = new Random();

    int foxRandom = random.nextInt(99) + 1;

    // print(foxRandom);

    String urlFox = 'https://randomfox.ca//images//${foxRandom.toString()}.jpg';

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(urlFox),
            placeholder: AssetImage('assets/jar-loading.gif.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://cdn.pixabay.com/photo/2017/11/30/12/35/cat-2988354_960_720.jpg'),
          // ),
          Container(
              padding: EdgeInsets.all(10.0), 
              child: Text('Un zorro random xD')),
        ],
      ),
    );
  }
}
