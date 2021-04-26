import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      margin: new EdgeInsets.symmetric(horizontal: 20.0),
                      height: 55,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xffC9DCE9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "username",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      margin: new EdgeInsets.symmetric(horizontal: 20.0),
                      height: 55,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xffC9DCE9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            hintText: "password",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff96B7D6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 17),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: new Text(
                                "Successful Login!",
                              ),

                              actions: <Widget>[
                                new FlatButton(
                                  child: new Text(
                                    "Continue",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
