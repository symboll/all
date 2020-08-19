import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://user-gold-cdn.xitu.io/2017/11/20/15fd7937bfca9d71?w=650&h=910&f=png&s=167319'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[100].withOpacity(1.0),
            BlendMode.hardLight                            // 滤镜混合模式 
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0,color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            // padding: EdgeInsets.only(top: 10.0,right: 20.0, bottom: 30.0, left: 40.0, ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(            // 装饰
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   )
              // )
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
              // borderRadius:BorderRadius.only(
              //   bottomLeft: Radius.circular(16.0)
              // )
              // borderRadius: BorderRadius.circular(16.0),  // 不能与BoxShape.circle共存
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0,8.0 ),
                  color: Color.fromRGBO(16, 20, 100, 1.0),
                  blurRadius: 20.0,              // 模糊
                  // spreadRadius: 0.0          // 扩散
                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0)
              //   ]
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          )
        ],
      ),
    );
  }
}
class RichTextDemo  extends StatelessWidget {
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
