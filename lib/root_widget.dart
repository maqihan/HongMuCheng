import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/ui/page/home/index_page.dart';
import 'package:hong_mu_cheng/ui/page/home/my_page.dart';
import 'package:hong_mu_cheng/utils/constants.dart';

class RootWidget extends StatefulWidget {
  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {

  int _currentIndex = 0;
  List <Widget> _pages = [IndexPage(),IndexPage(),MyPage()];

  _tapItem(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: IndexedStack(index: _currentIndex,children: _pages,),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('新闻'), icon: Icon(Icons.camera)),
          BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.account_circle)),
        ],
        onTap: _tapItem,
        currentIndex: _currentIndex,
        selectedItemColor: PrimaryColor,
      ),
    );
  }
}

