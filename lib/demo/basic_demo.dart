import 'package:flutter/material.dart';


class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return RichText(
      text: TextSpan(
        text: 'hello lee',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey
            )
          )
        ]
      )
    );
  }
}


class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
      fontSize: 20.0
    );
    final String _author = '李白';
    final String _title = '将进酒';
    return Text(
      '《$_title》 -$_author 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。', 
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
