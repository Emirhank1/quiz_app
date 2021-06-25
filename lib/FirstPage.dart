import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'RegisterPage.dart';

class FirstPage extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Color(0xff96B7D6),
    minimumSize: Size(300, 60),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(300, 60),
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
          child: Center(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/yoksa.jpg'), fit: BoxFit.cover),
              ),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 500,
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle2,
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
                    );},
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 17, color: Colors.black87),
                    ),


                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 17,color: Colors.black87),
                    ),
                    onPressed: () { Navigator.of(context).push(
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
                    );},
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
