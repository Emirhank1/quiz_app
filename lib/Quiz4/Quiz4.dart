import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';
import 'package:quiz_app/Quiz4/Quiz4_infos.dart';
import '../Constants/consts.dart';

class QuizTest4 extends StatelessWidget {
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
        quiz_2.queBox4[queIndex].queBack == chosenButton
            ? yesOrnoList4.add(trueIcon)
            : yesOrnoList4.add(falseIcon) ;
        queIndex++;
      });
    }
  }
  List<Icon> yesOrnoList4 = [];
  int queIndex = 0;
  quizInfos4 quiz_2 = quizInfos4();


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
                quiz_2.queBox4[queIndex].queText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Wrap(alignment: WrapAlignment.center, children: yesOrnoList4),
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
                            if (yesOrnoList4.length == 5) {
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
                                      "Knowledge is force, just get it!",
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
                            if (yesOrnoList4.length == 5) {
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
                                      "Knowledge is force, just get it!",
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
