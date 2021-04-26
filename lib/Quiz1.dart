import 'package:flutter/material.dart';
import 'Constants/consts.dart';
import 'HomePage.dart';
import 'Quiz_infos.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  void buttonFunc(bool chosenButton) {
    {
      setState(() {
        quiz_1.queBox1[queIndex].queBack == chosenButton
            ? yesOrnoList.add(trueIcon)
            : yesOrnoList.add(falseIcon);
        queIndex++;
      });
    }
  }

  List<Icon> yesOrnoList = [];
  int queIndex = 0;
  quizInfos1 quiz_1 = quizInfos1();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded( // İstenilen alanda esnetme, sığdırma yapmak için kullanılır.
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quiz_1.queBox1[queIndex].queText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Wrap(alignment: WrapAlignment.center, children: yesOrnoList), // Yatay ve dikey hizalama yapmak için kullanılır.
        Expanded(
          flex: 1,
          child: Padding( // Child Widget'a içerden boşluk vermek için kullanılır.
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
                            if (yesOrnoList.length == 11) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {

                                  return AlertDialog(
                                    title: new Text(
                                      "End of the Quiz!",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    content: new Text(
                                      "Keep on learn mate...",
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
                              //yesOrnoList = [];
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
                            if (yesOrnoList.length == 11) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {

                                  return AlertDialog(
                                    title: new Text(
                                      "End of the Quiz!",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    content: new Text(
                                      "Keep on learn mate...",
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
                              //yesOrnoList = [];

                            }
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
