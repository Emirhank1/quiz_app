import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';
import '../Constants/consts.dart';
import 'Quiz2_infos.dart';

class QuizTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuestionPage(),
          ),
        ),
      ),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  void buttonFunc(bool chosenButton) {
    {
      setState(() {
        quiz_2.queBox2[queIndex].queBack == chosenButton
            ? yesOrnoList2.add(trueIcon)
            : yesOrnoList2.add(falseIcon);
        queIndex++;
      });
    }
  }

  List<Icon> yesOrnoList2 = [];
  int queIndex = 0;
  quizInfos2 quiz_2 = quizInfos2();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quiz_2.queBox2[queIndex].queText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Wrap(alignment: WrapAlignment.center, children: yesOrnoList2),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Color(0xffBC1319),
                          child: Text(
                            "False",
                            style: TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            buttonFunc(false);
                            if (yesOrnoList2.length == 10) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  // return object of type Dialog
                                  return AlertDialog(
                                    title: new Text(
                                      "End of the Quiz!",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    content: new Text(
                                      "Never lose your creativity...",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    actions: <Widget>[
                                      new FlatButton(
                                        child: new Text(
                                          "Close",
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

                              queIndex = 0;
                            }
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Color(0xff00B124),
                          child: //Icon(Icons.thumb_up, size: 30.0),
                              Text(
                            "True",
                            style: TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            buttonFunc(true);
                            if (yesOrnoList2.length == 10) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  // return object of type Dialog
                                  return AlertDialog(
                                    title: new Text(
                                      "End of the Quiz!",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    content: new Text(
                                      "Never lose your creativity...",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    actions: <Widget>[
                                      new FlatButton(
                                        child: new Text(
                                          "Close",
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
                              queIndex = 0;
                            }
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
