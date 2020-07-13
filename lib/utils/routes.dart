
import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/ui/page/home/home_page.dart';

class Routes{

  static Map<String, WidgetBuilder> allRoutes() {
    return  <String, WidgetBuilder>{
      '/home': (BuildContext context) => HomePage(),
      '/home2': (BuildContext context) => HomePage(),
      '/home3': (BuildContext context) => HomePage(),
    };
  }
}
