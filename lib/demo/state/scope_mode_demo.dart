

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';


class ScopeModeDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterWraper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (BuildContext context, Widget _ ,CounterModel model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increaseCount
          )
        )
      )
    );
  }
}

class CounterWraper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Counter();
  }
}

class Counter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (BuildContext context, Widget _, CounterModel model) => Center(
          child: ActionChip(
          label: Text('${model._count}'),
          onPressed: model.increaseCount
        ),
      )
    );
  }
}

class CounterModel extends Model {
  int _count = 0;
  int get count => _count;
  void increaseCount() {
    _count += 1;
    notifyListeners();
  }
}