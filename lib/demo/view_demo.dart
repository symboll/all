import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}
class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _gridItemBuilder (BuildContext context, int index) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[100],
            width: 1.0,
            style: BorderStyle.solid
          )
        ),
        child: Image.network(
          posts[index].imageUrl,
          fit: BoxFit.cover,
        ),
      );
    }
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(   // 控制视图的显示。
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles (int length) {
    return List.generate(length, (index) => Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal,    // 滚动方向 
      children: _buildTiles(100)
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles (int length) {
    return List.generate(length, (index) => Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal,    // 滚动方向 
      children: _buildTiles(100)
    );
  }
}

class PageViewBuilderDemo  extends StatelessWidget {
  Widget _itemBuilder (BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                posts[index].author
              )
            ],
          )
        )       
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _itemBuilder
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,    // 自动翻页
      // reverse: true,         // 倒置
      scrollDirection: Axis.vertical,   // 滑动的方向 默认水平
      onPageChanged: (currentPage) => debugPrint('$currentPage'),
      controller: PageController(
        initialPage: 1,
        // keepPage: false,
        // viewportFraction: 1.0     //视图占用比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'First Page',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white
            )
          ),
        ),
        Container(
          color: Colors.brown[600],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Second Page',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white
            )
          ),
        ),
        Container(
          color: Colors.brown[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Third Page',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white
            )
          ),
        )
      ],
    );
  }
}