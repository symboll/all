import 'dart:async';
import 'package:flutter/material.dart';


// 应用开发架构 bloc。业务逻辑组件。把业务所需要的逻辑单独拿出来放在一个类里。
// bloc 是谷歌团队给出的反应式开发架构

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BlocDemo'),
          elevation: 0.0,
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButton(),
      )
    );
  }
}

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterbloc = CounterProvider.of(context).bloc;
    return Center(
      child: StreamBuilder(
        initialData: 0,
        stream: _counterbloc.count,
        builder: (BuildContext context, snapShot) {
          return ActionChip(
            label: Text('${snapShot.data}'),
            onPressed: (){
              _counterbloc.counter.add(1);
            }
          );
        },
      )
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterbloc = CounterProvider.of(context).bloc;
    return FloatingActionButton(
      onPressed: () {
        _counterbloc.counter.add(1);
      },
      child: Icon(Icons.add),
    );
  }
}

class CounterProvider extends InheritedWidget {
  CounterProvider({Key key, this.child, this.bloc}) : super(key: key, child: child);

  final Widget child;
  final CounterBloc bloc;

  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return true;
  }
}


class CounterBloc {
  int _count = 0;
  final _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;

  final _counterController = StreamController<int>();
  Stream<int> get count => _counterController.stream;

  CounterBloc() {
    _counterActionController.stream.listen(onData);
  }

  void onData (int data) {
    _count += data;
    _counterController.add(_count);
  }

  void disponse () {
    _counterActionController.close();
    _counterController.close();
  }
}