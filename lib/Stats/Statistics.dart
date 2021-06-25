import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/HomePage.dart';

void main() {
  runApp(Stats());
}

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataFromAPI(),
    );
  }
}

class DataFromAPI extends StatefulWidget {
  @override
  _DataFromAPIState createState() => _DataFromAPIState();
}

class _DataFromAPIState extends State<DataFromAPI> {
  GetUserData() async {
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u["name"], u["email"], u["username"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
          ),
          backgroundColor: Color(0xff305178),
          title: Text("Best Users"),
        ),
          body: Container(
        child: Card(
          child: FutureBuilder(
            future: GetUserData(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text("Loading...",style: TextStyle(fontSize: 20,),),
                  ),
                );
              }else return ListView.builder(itemCount: snapshot.data.length,itemBuilder: (context, i){
                return ListTile(
                  title: Text(snapshot.data[i].name),
                  subtitle: Text(snapshot.data[i].userName),
                  trailing: Text(snapshot.data[i].email),
                );
              });

            },
          ),
        ),
      )),
    );
  }
}

class User {
  final String name, email, userName;

  User(this.name, this.email, this.userName);
}
