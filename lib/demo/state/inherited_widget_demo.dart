import 'package:flutter/material.dart';


class InheritedWidgetDemo extends StatefulWidget {
  @override
  _InheritedWidgetDemoState createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {

  int _count = 0;
  void _increaseCount () {
    this.setState(() {
      _count += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: _count,
      increaseCount: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text('InheritedWidgetDemo'),
          elevation: 0.0,
        ),
        body: CounterWrap(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increaseCount
        ),
      ),
    );
  }
}

class CounterWrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Counter();
  }
}

class Counter extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final int _count = CounterProvider.of(context).count;
    final VoidCallback _increaseCount = CounterProvider.of(context).increaseCount;
    return Center(
      child: ActionChip(
        label: Text(
          '$_count',
          style: TextStyle(
            color: Colors.blue
          ),
        ),
        onPressed: _increaseCount,
      )
    );
  }
}

class CounterProvider extends InheritedWidget{
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child
  }): super(child: child);

  static CounterProvider of(BuildContext context) => 
    context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}