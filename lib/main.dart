import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'demo/i18n/native_localizations.dart';
import 'demo/i18n/i18n_demo.dart';
import 'demo/animation/animation_demo.dart';
import 'demo/http/http_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/rxdart/rxdart_demo.dart';
import 'demo/stream/stream_components.dart';
import 'demo/state/state_components.dart';
import 'demo/form/form_components.dart';
import 'demo/components/material_components.dart';
import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/list_view_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/table/table_components.dart';
import 'demo/view_demo.dart';
import 'demo/navigator_demo.dart' as np;
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        NativeLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en','US'),
        Locale('zh','CN')
      ],
      debugShowCheckedModeBanner: false,
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/':      (context) => NavigatorDemo(),
        '/about': (context) => np.Page(title: 'About'),
        '/home':  (context) =>  Home(),
        '/form':  (context)=> FormComponents(),
        '/mdc':   (context) => MaterialComponents(),
        '/table': (context) => TableComponents(),
        '/state-management': (context) => StateComponents(),
        '/stream': (context) => StreamComponents(),
        '/rxDart': (context) => RxDartDemo(),
        '/bloc':   (context) => BlocDemo(),
        '/http':   (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo()
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0)
        // highlightColor: Color.fromRGBO(255, 255, 255, 0.5)
        // splashColor: Colors.white70
      ),

    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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

