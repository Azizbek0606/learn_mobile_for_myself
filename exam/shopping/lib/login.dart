import 'package:flutter/material.dart';
import 'full_app.dart';
import 'admin.dart';
import 'date.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  void _login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Username: $_username, Password: $_password');

      if (_username == 'User' && _password == 'parol123') {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FullApplication()));
        user_data[0]['logged_in'] = true;
        user_data[0]['who'] = 'user';
      } else if (_username == 'admin' && _password == 'parol321') {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminPage()));
        user_data[0]['logged_in'] = true;
        user_data[0]['who'] = 'admin';
      } else {
        final snackBar = SnackBar(content: Text('Wrong user name or password!'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FullApplication()));
            },
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter UserName';
                  }
                  return null;
                },
                onChanged: (value) => _username = value,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter password';
                  }
                  return null;
                },
                onChanged: (value) => _password = value,
                decoration: const InputDecoration(
                  labelText: 'Parol',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}