import 'package:flutter/material.dart';


class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int value) {
                  this.setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: () {
                  this.setState(() {
                    _currentStep < 2 ? _currentStep +=1 : _currentStep = 0;
                  });
                },
                onStepCancel: () {
                  this.setState(() {
                    _currentStep > 0 ? _currentStep -=1 : _currentStep = 0;
                  });
                },
                
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text('login first'),
                    content: Text('Bulma is a free, open source CSS framework based on Flexbox and used by more than 200,000 developers.'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('Login'),
                    subtitle: Text('login first'),
                    content: Text('Bulma is a free, open source CSS framework based on Flexbox and used by more than 200,000 developers.'),
                    isActive: _currentStep == 1
                  ),
                  Step(
                    title: Text('Login'),
                    subtitle: Text('login first'),
                    content: Text('Bulma is a free, open source CSS framework based on Flexbox and used by more than 200,000 developers.'),
                    isActive: _currentStep == 2,
                    
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}