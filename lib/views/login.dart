import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kualif_futter/models/globalVar.dart';
import 'package:kualif_futter/views/home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var _ctrlUsername = TextEditingController();
  var _ctrlPass = TextEditingController();
  var ctx = null;


  void _login(BuildContext context) {
    var ctx = context;
    String username = _ctrlUsername.text;
    String pass = _ctrlPass.text;

    _ctrlUsername.text = "";
    _ctrlPass.text = "";

    if (username.isEmpty || pass.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Username or Password Cannot be Empty')),
      );
    } else if (username.length < 3 || username.length > 20) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Username Length must be between 3 - 20 ')),
      );
    } else if (pass.length < 5 || pass.length > 20) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Password Length must be between 5 - 20 ')),
      );
    }

    // Code kalau masuk in hier
    Username = username;
    Password = pass;
    Navigator.push(ctx, MaterialPageRoute(builder: (builder) {
      return homePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: 'Username'),
          controller: _ctrlUsername,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(hintText: 'Password'),
          controller: _ctrlPass,
        ),
        ElevatedButton(onPressed: () => _login(context), child: Text('Login'))
      ],
    );
  }
}
