import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('hello lee'),
            // pinned: true,   // 固定 SliverAppBar 显示
            floating: true,     
            
            expandedHeight:170.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'hello lee'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w400
                )
              ),
              background: Image.network(
                'https://user-gold-cdn.xitu.io/2017/11/20/15fd7937bfca9d71?w=650&h=910&f=png&s=167319',
                fit: BoxFit.cover
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              // sliver: SliverGridDemo()
              sliver: SliverListDemo(),
            ),
          )
        ],
      ) ,
    );
  }
}

class SliverListDemo extends StatelessWidget {
  Widget _builder (BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 12.0
      ),
      child: Material(
        borderRadius: BorderRadius.circular(32.0),
        elevation: 14.0,
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16.0/ 9.0,
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 32.0,
              left: 32.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    posts[index].title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    posts[index].author,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate:SliverChildBuilderDelegate(
        _builder, 
        childCount: posts.length
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  Widget _builder (BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
          _builder, 
        childCount: posts.length
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0  // 长宽比例
      )
    );
  }
}