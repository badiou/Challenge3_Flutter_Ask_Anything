
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blueAccent[100],
        appBar:AppBar(
          title:Text('ASK ME ANYTHING'),
          backgroundColor: Colors.blueAccent,
      ),
        body:BallPage(),
      ),
    ),
  );
}
class BallPage extends StatefulWidget {
  //const BallPage({Key? key}) : super(key: key);
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int myAllNumber = 1;
  void changeBall() {
    setState(() {
     myAllNumber = Random().nextInt(5)+1;
     print('image ball$myAllNumber is selected');
    });
  }

  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                  TextButton(
                      onPressed: () {
                        changeBall();
                      },
                      child: Image(
                        image:AssetImage('images/ball$myAllNumber.png'),
                      ),
                  ),

                ),
            )
          ],
        )
    );
  }
}