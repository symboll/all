import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {

  int _count = 0;
  void _increaseCount () {
    this.setState(() {
      _count += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: Counter(this._count, this._increaseCount),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increaseCount
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int _count;
  final VoidCallback _increaseCount;
  Counter(this._count, this._increaseCount);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text(
          '$_count',
          style: TextStyle(
            color: Colors.red
          ),
        ),
        onPressed: _increaseCount,
      )
    );
  }
}