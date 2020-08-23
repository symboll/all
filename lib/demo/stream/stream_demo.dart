
import 'package:flutter/material.dart';
import 'dart:async';


class StreamDemo extends StatefulWidget {
  @override
  _StreamDemoState createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  StreamController<String> _stream;
  StreamSubscription _streamSubscription;
  StreamSink _streamSink;

  @override
  void dispose() {
    super.dispose();
    _stream.close();
  }
  @override
  void initState() {
    super.initState();

    // Stream<String> _stream = Stream.fromFuture(fetchData());
    _stream = StreamController<String>();
    _streamSink = _stream.sink;
    // _streamSubscription = _stream.stream.listen(onData, onError: onError, onDone: onDone);
  }
  Future<String> fetchData () async{
     await Future.delayed(Duration(seconds: 3));
     return 'hello ~';
    // throw 'something';
  }

  void onData (value) {
    print(value);
  }
  void onError(error) {
    print('Error: $error');
  }
  void onDone() {
    print('done');
  }

  // 给stream添加数据
  void _addDataToStream () async {
    String data = await fetchData();
    // _stream.add(data);
    _streamSink.add(data);
  }
  // 停止订阅 
  void _pauseStream () {
    _streamSubscription.pause();
  }
  // 恢复订阅 
  void _resumeStream () {
    _streamSubscription.resume();
  }
  // 取消订阅
  void _cancelStream() {
    _streamSubscription.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StreamBuilder(
                stream: _stream.stream,
                initialData: '...',
                builder: (context, snapshot ) {
                  return Text('${snapshot.data}');
                }
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: _addDataToStream,
                    child: Text('Add')
                  ),
                  FlatButton(
                    onPressed: _pauseStream,
                    child: Text('Pause')
                  ),
                  FlatButton(
                    onPressed: _resumeStream,
                    child: Text('Resume')
                  ),
                  FlatButton(
                    onPressed: _cancelStream,
                    child: Text('Cancel')
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}