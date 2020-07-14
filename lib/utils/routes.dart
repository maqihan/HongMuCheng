
import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/ui/page/detail/product_detail_page.dart';
import 'package:hong_mu_cheng/ui/page/home/index_page.dart';
import 'package:hong_mu_cheng/ui/page/home/my_page.dart';

class Routes{

  static Map<String, WidgetBuilder> allRoutes() {
    return  <String, WidgetBuilder>{
      '/index': (BuildContext context) => IndexPage(),
      '/message': (BuildContext context) => IndexPage(),
      '/my': (BuildContext context) => MyPage(),
      '/product_detail': (BuildContext context) => ProductDetail(),

    };
  }
}
