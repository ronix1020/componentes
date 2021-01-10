import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated example'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color),
          duration: Duration(milliseconds: 1200),
          curve: Curves.bounceInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _estado(),
      ),
    );
  }

  void _estado() {
    setState(() {
      final random = new Random();

      //generamos un random para las nuevas dimensiones
      //El mas uno para mientras no de un numero 0
      double _widthA = random.nextInt(300).toDouble();
      double _heightA = random.nextInt(300).toDouble();
      if (_widthA > 1 && _heightA > 1){
        _width = random.nextInt(300).toDouble()+1;
        _height = random.nextInt(300).toDouble()+1;
      }
           
      //generamos un color random
      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
      //generamos un radio de borde random
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble()+1);
    });
  }
}
