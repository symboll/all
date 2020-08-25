
import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> 
  with TickerProviderStateMixin{

  AnimationController _animationController;
  Animation _animation;
  Animation _animationColor;
  CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      // value: 32.0,
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 1000),
      vsync: this
    );

    _curve = CurvedAnimation(parent: _animationController, curve: Curves.bounceOut);

    _animation = Tween(begin: 32.0, end: 100.0).animate(_curve);
    _animationColor = ColorTween(
      begin: Colors.red,
      end: Colors.red[800]
    ).animate(_curve);


    // _animationController.addListener(() {
    //   this.setState(() { });
    // });

    _animationController.addStatusListener((AnimationStatus status) {
      print(status);
    });
  }

  @override
  void dispose() { 
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: AnimatedHeart(
          animations: [
            _animation,
            _animationColor
          ],
          controller: _animationController
        )
      )
    );
  }
}


class AnimatedHeart extends AnimatedWidget{
  final List animations;
  final AnimationController controller;

  AnimatedHeart({
    this.animations,
    this.controller
  }): super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        switch (controller.status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:controller.forward();
        }
      }
    );
  }

}