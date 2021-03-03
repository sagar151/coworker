import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _secureText = true;
  bool _secureTexttwo = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Email',
                      labelStyle: TextStyle(fontSize: 15.0),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    obscureText: _secureText,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Password',
                      labelStyle: TextStyle(fontSize: 15.0),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_secureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                      ),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    obscureText: _secureTexttwo,
                    decoration: InputDecoration(
                      labelText: 'Conform Password',
                      labelStyle: TextStyle(fontSize: 15.0),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_secureTexttwo
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _secureTexttwo = !_secureTexttwo;
                          });
                        },
                      ),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
              },
              color: Color(0XFF0b69ff),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                height: 55.0,
                width: 150.0,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                "SignUp",
                style: TextStyle(
                  color: Color(0XFF0b69ff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
