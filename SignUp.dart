import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'Login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _secureText = true;
  bool _secureTexttwo = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                        labelText: 'Enter Your Name',
                        labelStyle: TextStyle(fontSize: 15.0),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter Your Mobile No',
                        labelStyle: TextStyle(fontSize: 15.0),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: Icon(Icons.contacts),
                      ),
                    ),
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
                        labelText: 'Enter Your Conform Password',
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
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Your City',
                        labelStyle: TextStyle(fontSize: 15.0),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: Icon(Icons.location_city),
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
                      "SignUp",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0XFF0b69ff),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
