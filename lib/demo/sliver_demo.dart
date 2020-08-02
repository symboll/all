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
                'https://resources.ninghao.org/images/keyclack.jpg',
                fit: BoxFit.cover
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo()
            ),
          )
        ],
      ) ,
    );
  }
}

// class SliverListDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate:

//     );
//   }
// }


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