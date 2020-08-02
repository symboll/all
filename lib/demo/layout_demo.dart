import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0/9.0,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: <Widget>[
          //     IconBadge(Icons.pool, size: 16.0),
          //   ],
          // ),
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment(1.0, -0.4),      // child 出现在SizedBox中的位置
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Icon(Icons.ac_unit, size: 32.0,color: Colors.white),
                ),
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0)
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ]
                    )
                  ),
                  child: Icon(Icons.brightness_2, size: 32.0,color: Colors.white),
                ),
              ),
              Positioned(
                top: 12.0,
                left: 12.0,
                child: Icon(Icons.ac_unit, size: 12.0,color: Colors.white),
              ),
              Positioned(
                top: 100.0,
                left: 100.0,
                child: Icon(Icons.ac_unit, size: 12.0,color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}


class IconBadge extends StatelessWidget {
  @override
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size =32.0
  });

  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size,color: Colors.white ),
      width: size + 60,
      height: size+ 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}