import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormDemo"),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
              RegisterForm()
            ],
          ),
        )
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final _registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool _autovalidate = false;

  void _submitRegisterForm () {
    if(_registerFormKey.currentState.validate()) {
      _registerFormKey.currentState.save();

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...')
        )
      );
    }else {
      setState(() {
        _autovalidate = true;
      });
    }
  }

  String _validatorUsername (value) {
    if(value.isEmpty) {
      return 'Username is required!';
    }
    return null;
  }
  String _validatorPassword (value) {
    if(value.isEmpty) {
      return 'Password is required!';
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'UserName'
            ),
            onSaved: (value) {
              username = value;
            },
            validator: _validatorUsername,
            autovalidate: _autovalidate,
          ),
          TextFormField(
            obscureText: true,      // 密码显示
            decoration: InputDecoration(
              labelText: 'Password'
            ),
            onSaved: (value) {
              password = value;
            } ,
            validator: _validatorPassword,
            autovalidate: _autovalidate,
          ),
          SizedBox(
            height: 16.0
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.deepOrange,
              child: Text('Register', 
                style: TextStyle(
                  color: Colors.white
                )
              ),
              elevation: 0.0,
              onPressed: _submitRegisterForm,
            ),
          )
        ],
      )
    );
  }
}



class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final _textEditingController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController.addListener(() { 
      debugPrint('${_textEditingController.text}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      // onChanged: (value) {
      //   debugPrint('change: ${value}');
      // },
      onSubmitted: (value) {
        debugPrint('submit: ${value}');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title',
        border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}