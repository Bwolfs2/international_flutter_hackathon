import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/screens/home/home_screen.dart';
import 'package:international_flutter_hackathon/src/screens/initial/initial_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width,
          height: 450,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
               Container(child: Image.asset("assets/logo_cync.png") , width: 200,),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                          border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                            labelText: "LOGIN",
                           labelStyle: TextStyle(color: Color(0xff3AD29F))
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              labelText: "SENHA",
                              labelStyle: TextStyle(color: Color(0xff3AD29F))
                             ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            color: Color(0xff736ff4),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  CupertinoPageRoute(builder: (_) {
                                return InitialScreen();
                              }));
                            },
                            child: Text(
                              "ENTRAR",
                              style: TextStyle(color: Colors.grey[200]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
