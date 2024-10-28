import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me AnyThing',style: TextStyle(fontSize: 20,color: Colors.white),),
          backgroundColor: Colors.blue[900],
        ),
        body: Magic8BallPage(),
      ),
    ),
  );
}

class Magic8BallPage extends StatefulWidget {
  const Magic8BallPage({super.key});

  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int MagicBall = 1;
  Asking(){
    setState(() {
      MagicBall = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
            Expanded(child: TextButton(onPressed:(){
              Asking();
            }, child: Image.asset("images/ball$MagicBall.png")))
        ],
      ),
    );
  }
}
