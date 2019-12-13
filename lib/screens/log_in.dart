import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  static String route = 'LogIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'CoolME.me => $route',
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    letterSpacing: 2.0,
                    //wordSpacing: 40.0,
                    color: Colors.purple,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PassWord',
                  ),
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
                    'Log In',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
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
        ],
      ),
    );
  }
}
