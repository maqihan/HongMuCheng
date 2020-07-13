import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/ui/page/home/components/search_box.dart';
import 'package:hong_mu_cheng/utils/constants.dart';

import '../../../utils/constants.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(
                '首页',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: false,
            ),
            SliverToBoxAdapter(
              child: SearchBox(),
            ),
            SliverToBoxAdapter(
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 70),
                  height: 200,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
