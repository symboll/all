import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';


// Rx = Reactive Extensions 

class RxDartDemo extends StatefulWidget {
  @override
  _RxDartDemoState createState() => _RxDartDemoState();
}

class _RxDartDemoState extends State<RxDartDemo> {
  PublishSubject<String> _textFieldSubject;
  @override
  void initState() {
    super.initState();
    _textFieldSubject = PublishSubject<String>();
    
    _textFieldSubject
      // .map((item)=> 'item=> $item')
      // .where((item) => item.length > 10 )
      .debounce((event) => TimerStream(true, Duration(milliseconds: 800)))
      .listen((value) => print(value));
    /**
     * 演示案例
     */

    // Stream<String> _observable =
    //   // Stream.fromFuture(Future.value('hello~'));
    //   // Stream.fromIterable(['hello', 'native code']);
    //   Stream.periodic(Duration(seconds: 3), (x)=>x.toString());
    // _observable.listen(print);

    // PublishSubject<String>  _publishSubject = PublishSubject<String>();

    // 可以把最后一次添加的数据，作为第一个项目， 交给新来的监听。
    // BehaviorSubject<String> _publishSubject = BehaviorSubject<String>();

    // 可以把添加到constroller 上的数据，全部添加到监听器
    // ReplaySubject<String> _publishSubject = ReplaySubject<String>(maxSize: 2);

    // _publishSubject.add('native ~ code');
    // _publishSubject.add('native ~ lee');

    // _publishSubject.listen((value) => print('listen 1: $value'));
    // _publishSubject.add('native ~ code 444444');
    // _publishSubject.listen((value) => print('listen 2: $value'));

    // _publishSubject.close();
  }

  @override
  void dispose() { 
    super.dispose();
    _textFieldSubject.close();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxdartDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black
        ),
        child: TextField(
          onChanged: (value) {
            _textFieldSubject.add('input: $value');
          },
          onSubmitted: (value) {
            _textFieldSubject.add('submit: $value');
          },
          decoration: InputDecoration(
            labelText: 'Title',
            filled: true
          ),
        ),
      )
    );
  }
}