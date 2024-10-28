import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/Avatar.jpg'),
              ),
               Text(
                'Vu Minh Quang',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Text(
                'Flutter Developer ',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  fontSize: 20,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10 , horizontal: 25 ),
                color: Colors.white,
                child: ListTile(
                  leading: const Icon(
                      Icons.phone,
                      color: Colors.teal
                  ),
                  title: Text("+84 375 163 291",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                  margin: const EdgeInsets.symmetric(vertical: 10 , horizontal: 25 ),
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.teal
                    ),
                    title: Text("quangminh32115@gmail.com",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal[900],
                          fontFamily: 'Source Sans Pro'),
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
