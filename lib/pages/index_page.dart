import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'member_page.dart';


class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  int _currentIndex = 0;
  var _currentPage;
  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _tabBodies[index];
    });
  }
  
  final List<Widget> _tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];
  List<BottomNavigationBarItem> _bottomBarItem =[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('分类')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text('购物车')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('我的')
    ), 
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _currentPage = _tabBodies[_currentIndex];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        elevation: 10.0,
      ),
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapHandler,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.black,
        items: _bottomBarItem
      )
    );
  }
}