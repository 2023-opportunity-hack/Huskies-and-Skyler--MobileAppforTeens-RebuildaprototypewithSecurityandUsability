import 'package:flutter/material.dart';



class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Second Page',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Tahoma",
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0), // Add outer padding
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tictactoe');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, padding: EdgeInsets.symmetric(
                  horizontal: 25.0, // Adjust horizontal padding as needed
                  vertical: 10.0,   // Adjust vertical padding as needed
                ),
                  backgroundColor: Colors.tealAccent,
                ),
                child: Text(
                  "Tic Tac Toe",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}