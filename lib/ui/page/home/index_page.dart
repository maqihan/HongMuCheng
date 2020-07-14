import 'package:flutter/material.dart';
import 'package:hong_mu_cheng/model/index_item_model.dart';
import 'package:hong_mu_cheng/ui/page/home/components/search_box.dart';

class IndexPage extends StatelessWidget {
  final data = [
    IndexItem(
        title: '测试数据这是古典家具最大的最贵的',
        image:
            'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/64558908/O1CN01gmZyHA2FfuglWFFwT_!!64558908.jpg_580x580Q90.jpg'),
    IndexItem(
        title: '测试数据',
        image:
            'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2607500825/O1CN01lgBwvx1HxtHnLrsKh_!!2607500825.jpg_580x580Q90.jpg'),
    IndexItem(
        title: '测试数据',
        image:
            'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2500861843/TB2LqWsg4SYBuNjSsphXXbGvVXa_!!2500861843.jpg_580x580Q90.jpg'),
    IndexItem(
        title: '测试数据',
        image:
            'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/64558908/O1CN01gmZyHA2FfuglWFFwT_!!64558908.jpg_580x580Q90.jpg'),
    IndexItem(
        title: '测试数据',
        image:
            'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2607500825/O1CN01lgBwvx1HxtHnLrsKh_!!2607500825.jpg_580x580Q90.jpg'),
    IndexItem(
        title: '测试数据',
        image:
            'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2500861843/TB2LqWsg4SYBuNjSsphXXbGvVXa_!!2500861843.jpg_580x580Q90.jpg'),
  ];
  Widget girdItem(BuildContext context, IndexItem model) => InkWell(
        onTap: () {},
        child: Card(
          margin: EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          elevation: 5.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                  model.image,
                  fit: BoxFit.cover,
                ),
              ),

              ConstrainedBox(
                constraints: BoxConstraints(minWidth: double.infinity),
                child: Text(
                  '¥ 123',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
              ),
              Text(
                model.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
        ),
      );

  Widget contentView() => CustomScrollView(
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
          SliverPadding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return girdItem(context, data[index]);
                },
                childCount: data.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: contentView(),
      ),
    );
  }
}
