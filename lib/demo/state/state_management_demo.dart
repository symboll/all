import 'package:flutter/material.dart';

// class CallObject {
//   List<Widget> footerButton = [];
//   call(int i,double e)=> "$i xxx $e";
// }

// typedef void ValueFunction(int i);

// ValueFunction vt = (int i) {
//   print('zzz $i');
// };

// init() {
//   CallObject callobject = CallObject();
//   print(callobject(11,11.0));
//   print(callobject?.call(11,11.0));
//   vt(666);
//   vt?.call(777);
// }



class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {

  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child:Chip(
          label: Text('$_count')
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          this.setState(() {
            _count += 1;
          });
        }
      ),
    );
  }
}