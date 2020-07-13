import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/ui/page/home/home_page.dart';
import 'package:hong_mu_cheng/utils/routes.dart';

class MyApp extends StatelessWidget {

  final materialApp = MaterialApp(
    title: '红不城',
    home: HomePage(),
    routes: Routes.allRoutes(),
    
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
