import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/list_view_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        // highlightColor: Color.fromRGBO(255, 255, 255, 0.5)
        // splashColor: Colors.white70
      ),

    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar:  AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: "Navigration",
          //   onPressed: () => {}
          // ),
          title: Text('app'.toUpperCase()),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), tooltip: 'Serach', onPressed: () => {
              debugPrint('bbbb')
            })
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,        // 未被选中的颜色
            indicatorColor: Colors.black54 ,
            indicatorSize: TabBarIndicatorSize.tab,      // 下面指示器的长度与 tab的长度一样
            indicatorWeight: 1.0,
            tabs: <Widget> [
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0,color: Colors.red,),
            Icon(Icons.change_history, size: 128.0,color: Colors.red),
            Icon(Icons.directions_bike, size: 128.0,color: Colors.red)
          ]
        ),
        drawer: DrawerDemo(),
      )
    );
  }
}

