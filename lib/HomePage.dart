import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz3/Quiz3.dart';
import 'AboutPage/About.dart';
import 'Quiz2/Quiz2.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                          child: Icon(
                            Icons.account_circle_rounded,
                            size: 70,
                          )),
                      Align(
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(
                            "Emirhan Kocakuşak",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "emirhan123456@gmail.com",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 22,
                            color: Colors.white,
                          )
                        ],
                      )
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
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text('Achievements'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('Favourites'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.report_outlined),
                title: Text('Report'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff305178),
          title: Text(
            "Quiz App ",
          ),
        ),
        backgroundColor: Color(0xffEBF7F5),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    color: Color(0xff96B7D6),
                    child: Text(
                      "Programmer Quiz",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizTest()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    color: Color(0xff305178),
                    child: Text(
                      "Designer Quiz",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizTest2()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    color: Color(0xff96B7D6),
                    child: Text(
                      "Pop Culture Quiz",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizTest3()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    color: Color(0xff305178),
                    child: Text(
                      "Coming Soon",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    color: Color(0xff96B7D6),
                    child: Text(
                      "About This App",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    onPressed: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
