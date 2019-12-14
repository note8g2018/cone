import 'package:flutter/material.dart';
import 'package:cone/widgets/sTextForm.dart';
import 'package:cone/classes/valiDate.dart';

class LogIn extends StatefulWidget {
  static String route = 'LogIn';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _autoValidate = false;

  String _userName;

  String _passWord;

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'CoolME.me => ${LogIn.route}',
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            autovalidate: _autoValidate,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: sTextFormField(
                    keyboardType: TextInputType.text,
                    letterSpacing: 2.0,
                    color: Colors.purple,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    helperText:
                        'first 3 must in [a-z], [a-z]+[0-9], at least 8',
                    labelText: 'User Name',
                    validator: ValiDate.userNameV,
                    onSaved: (value) {
                      _userName = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: sTextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    letterSpacing: 1.0,
                    color: Colors.purple,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    helperText: 'at least 8, [a-z]+[0-9]+[!@#\$%^&*()_+-=]',
                    labelText: 'PassWord',
                    validator: ValiDate.passWordV,
                    onSaved: (value) {
                      _passWord = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                    onPressed: () {
                      _validateInputs();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
