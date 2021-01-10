import 'package:componentes_app/src/pages/alert_page.dart';
import 'package:componentes_app/src/pages/animated_page.dart';
import 'package:componentes_app/src/pages/avatar_page.dart';
import 'package:componentes_app/src/pages/card_page.dart';
import 'package:componentes_app/src/pages/home_page.dart';
import 'package:componentes_app/src/pages/input_page.dart';
import 'package:componentes_app/src/pages/listview_page.dart';
import 'package:componentes_app/src/pages/slider_page.dart';

import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'       : (BuildContext context) => HomePage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'card'    : (BuildContext context) => CardPage(),
    'animated': (BuildContext context) => AnimatedPage(),
    'inputs'  : (BuildContext context) => InputPage(),
    'slider'  : (BuildContext context) => SliderPage(),
    'list'    : (BuildContext context) => ListaPage(),
  };

}
