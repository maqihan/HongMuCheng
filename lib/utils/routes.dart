
import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/ui/page/home/index_page.dart';

class Routes{

  static Map<String, WidgetBuilder> allRoutes() {
    return  <String, WidgetBuilder>{
      '/home': (BuildContext context) => IndexPage(),
      '/home2': (BuildContext context) => IndexPage(),
      '/home3': (BuildContext context) => IndexPage(),
    };
  }
}
