import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';
import 'chart.dart';

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
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color(0xff305178),
          title: Text("About"),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),

                GestureDetector(

                  onTapUp: (e) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff96B7D6),Color(0xff305178)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen "
                        "3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301057 numaralı "
                        "Emirhan Kocakuşak tarafından 25 Haziran 2021 günü yapılmıştır",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 5,
                ),
                Text("Top Locations", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                PieChartSample2(),
                const SizedBox(
                  height: 12,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
