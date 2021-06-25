import 'package:flutter/material.dart';
import 'package:quiz_app/ProfilePage.dart';
import 'package:quiz_app/Quiz3/Quiz3.dart';
import 'package:quiz_app/Quiz5/Quiz5.dart';
import 'package:quiz_app/Quiz6/Quiz6.dart';
import 'package:quiz_app/Quiz7/Quiz7.dart';
import 'package:quiz_app/Quiz8/Quiz8.dart';
import 'package:quiz_app/Stats/Statistics.dart';
import 'AboutPage/About.dart';
import 'Quiz2/Quiz2.dart';
import 'Quiz4/Quiz4.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawerEdgeDragWidth: MediaQuery.of(context).size.width,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment(-1.0, 0.0),
                          child: InkWell(
                            onTap:() {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Profile()),
                            );},
                            child: CircleAvatar(
                              foregroundColor: Colors.black,
                              radius: 50.0,
                              backgroundImage: AssetImage('assets/avatar.jpg'),
                              backgroundColor: Colors.white,
                            ),
                          ),),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(
                            "Emirhan Kocakuşak",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        height: 1,
                      ),

                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff96B7D6),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Account Settings'),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );},
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text('Achievements'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favourites'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Best Users'),
                onTap: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Stats()),
                );},
              ),

            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff305178),
          actions: [ IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            ),
          )],
        ),
        backgroundColor: Color(0xffEBF7F5),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 11 true or false question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.95),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/programmer.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 5,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 10 true or false question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/designer.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest2()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 5,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 5 little or much question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/popculture.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest3()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 5,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 5 true or false question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/politics.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest4()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 5,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 5 true or false question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/history.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest5()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 5,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 5 true or false question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/philosophy.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest6()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 5,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 6 true or false question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/science.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest7()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 5,
                  ),
                  GestureDetector(
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Please tap once to start quiz!')));
                    },
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "Please tap once to start quiz!",
                            ),
                          );
                        },
                      );
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text(
                              "There are 6 true or false question in this category.",
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/space.jpg'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizTest8()),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
