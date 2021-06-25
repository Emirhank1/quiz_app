import 'package:flutter/material.dart';

import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    margin: new EdgeInsets.symmetric(horizontal: 20.0),
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffC9DCE9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Email",
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    margin: new EdgeInsets.symmetric(horizontal: 20.0),
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffC9DCE9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.insert_emoticon),
                        hintText: "First Name",
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    margin: new EdgeInsets.symmetric(horizontal: 20.0),
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffC9DCE9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.insert_emoticon),
                        hintText: "Last Name",
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                    "Register",
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: new Text(
                            "Registration Successful!",
                          ),
                          actions: <Widget>[
                            new FlatButton(
                              child: new Text(
                                "Login",
                                style: TextStyle(fontSize: 17,color: Colors.blueAccent,),
                              ),
                              onPressed: () { Navigator.of(context).push(
                                PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 1000),
                                  pageBuilder: (
                                      BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return LoginPage();
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
                MaterialButton(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            color: Colors.black, fontSize: 17),
                        children: <TextSpan>[
                          TextSpan(text: ' Login',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 17),  //Don\'t

                          )
                        ]
                    ),
                  ),
                  onPressed: (){ Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 800),
                    pageBuilder: (
                        BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation) {
                      return LoginPage();
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
            )),
          ),
        ),
      ),
    );
  }
}
