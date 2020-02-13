import 'package:flutter/material.dart';
import 'package:tuntikirjanpito/src/app.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  /*final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;*/

  @override
  Widget build(BuildContext context) {
//kikkeli
    final email = TextFormField(
      //onSaved: (value) => _email = value,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: 'yeet@gmail.com',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
      ),

    );

    final password = TextFormField(
    //  onSaved: (value) => _password = value,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),

        child: MaterialButton(
        //  key: _formKey,
          minWidth: 200.0,
          height: 42.0,
          onPressed:(){
            Navigator.of(context).pushNamed("/HomePage");
          },
          color: yeetColor,
          child: Text('Log in', style: TextStyle(color: Colors.white)),
        
      ),

    ); 


    final forgotLabel = FlatButton(
      child: Text('Forgot password?:D', style: TextStyle(color: Colors.redAccent)),
      onPressed: () {},

    );

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}