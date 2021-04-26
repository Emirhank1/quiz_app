import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff305178),
          title: Center(child: Text("About")),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              //SizedBox(height: 200,),
              Card(
                elevation: 15,
                color: Colors.white,
                //height: 100,
                //width: 400,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen "
                        "3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301057 numaralı "
                        "Emirhan Kocakuşak tarafından 30 Nisan 2021 günü yapılmıştır",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 350,
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: RaisedButton(
                  color: Color(0xff96B7D6),
                  child: Text(
                    "Back", style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  onPressed: ()  => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
