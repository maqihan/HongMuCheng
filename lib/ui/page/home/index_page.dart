import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/utils/constants.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              '首页',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );
  }
}
