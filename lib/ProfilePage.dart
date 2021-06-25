import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xff305178),
        title: Text("Profile"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff96B7D6), Color(0xff305178)],
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 60.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                            content: new Text('You are not authorized for this')));
                      },
                      onTapCancel: () {
                        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                            content: new Text('Tap picture to edit')));
                      },
                      child: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage('assets/avatar.jpg'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Emirhan Kocakuşak',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        )),
                  ]),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child: Card(
                          margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                          child: Container(
                              width: 310.0,
                              height: 250.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Other",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.mail,
                                          color: Colors.blueAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "E-mail",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "emirhan123456@gmail.com",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.flag,
                                          color: Colors.pinkAccent[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Country",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "Turkey",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.notification_important,
                                          color: Colors.lightGreen[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Notifications",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "Turn On",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )))),
                ),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.40,
              left: 20.0,
              right: 20.0,
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Text(
                          'Level',
                          style:
                              TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "19",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    )),
                    Container(
                      child: Column(children: [
                        Text(
                          'Birthday',
                          style:
                              TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'July 19th',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ]),
                    ),
                    Container(
                        child: Column(
                      children: [
                        Text(
                          'Age',
                          style:
                              TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '19 yrs',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              )))
        ],
      ),
    );
  }
}
