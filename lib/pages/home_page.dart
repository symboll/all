import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    getHttp();
    return Center(
      child: Text('HomePage'),
    );
  }

  void getHttp() async {
    try{
      final response = await Dio().get('http://localhost:8000/home');
      return print(response);
      // print('object');
    }catch (e) {
      return print(e);
    }
  }
}