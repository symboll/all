import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.add),
        // elevation: 0.0,
        // backgroundColor: Colors.blue,
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(30.0)
        // ),
      ),
      // floatingActionButton: FloatingActionButtonExtended(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class FloatingActionButtonExtended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton.extended(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(Icons.add),
      label: Text('🐱')
    );
  }
}