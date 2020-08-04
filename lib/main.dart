import 'package:flutter/material.dart';
import 'demo/components/material_components.dart';
import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/form/form_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/list_view_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/view_demo.dart';
import 'demo/navigator_demo.dart' as np;
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/':      (context) => NavigatorDemo(),
        '/about': (context) => np.Page(title: 'About'),
        '/home':  (context) =>  Home(),
        '/form':  (context)=> FormDemo(),
        '/mdc':   (context) => MaterialComponents()
      },
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
      length: 4,
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
              debugPrint('Search')
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
              Tab(icon: Icon(Icons.view_quilt))
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            // LayoutDemo(),
            ViewDemo(),
            SliverDemo()
          ]
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.pop(context)
        ),
      )
    );
  }
}

