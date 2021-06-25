import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';
import 'package:quiz_app/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Color(0xff96B7D6),
    minimumSize: Size(250, 60),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
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
                          icon: Icon(Icons.account_circle),
                          hintText: "Username",
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
                            hintText: "Password",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
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
                                  style: TextStyle(fontSize: 17,color: Colors.blueAccent,),
                                ),
                                onPressed: () { Navigator.of(context).push(
                                  PageRouteBuilder(
                                    transitionDuration: Duration(milliseconds: 2000),
                                    pageBuilder: (
                                        BuildContext context,
                                        Animation<double> animation,
                                        Animation<double> secondaryAnimation) {
                                      return HomePage();
                                    },
                                    transitionsBuilder: (
                                        BuildContext context,
                                        Animation<double> animation,
                                        Animation<double> secondaryAnimation,
                                        Widget child) {
                                      return Align(
                                        child: FadeTransition(
                                          opacity: animation,
                                          child: child,
                                        ),
                                      );
                                    },
                                  ),
                                );}
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  FlatButton(
                    child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(
                              color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                            TextSpan(text: ' Sign up',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 17),  //

                            )
                          ]
                      ),
                    ),
                    onPressed: () { Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 800),
                        pageBuilder: (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return RegisterPage();
                        },
                        transitionsBuilder: (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return Align(
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          );
                        },
                      ),
                    );}
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
