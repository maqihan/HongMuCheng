import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/root_widget.dart';
import 'package:hong_mu_cheng/utils/constants.dart';
// import 'package:hong_mu_cheng/ui/page/home/index_page.dart';
import 'package:hong_mu_cheng/utils/routes.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: '红木城',
    theme: ThemeData(
      primaryColor: PrimaryColor,
    ),
    
    home: RootWidget(),
    routes: Routes.allRoutes(),
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
