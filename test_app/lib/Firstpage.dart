import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'First Page',
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
                  Navigator.pushNamed(context, '/second');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, padding: EdgeInsets.symmetric(
                  horizontal: 25.0, // Adjust horizontal padding as needed
                  vertical: 10.0,   // Adjust vertical padding as needed
                ),
                  backgroundColor: Colors.tealAccent,
                ),
                child: Text(
                  "Second Screen",
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

import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to Login"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Align(alignment: Alignment.center),
            Image.asset('assets/safespacebg.png'),
            new Text(
                'How it Works',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: "Plus Jakarta Sans",
                  fontWeight: FontWeight.w600,
                )
            ),
            new Text('',),
            new Text('',),
            new Text(
                '•The app is disguised as a game of Tic Tac Toe to offer a layer of confidentiality and protection.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "Plus Jakarta Sans",
                  fontWeight: FontWeight.w200,
                )
            ),
            new Text('',),
            new Text(
                '•Tapping any marked square three times in a row to login.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Plus Jakarta Sans",
                  fontWeight: FontWeight.w200,
                )
            ),
            new Text('',),
            new Text('',),
            new Text('',),
            Padding(
              padding: EdgeInsets.all(10.0), // Add outer padding
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tictactoe');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, padding: EdgeInsets.symmetric(
                  horizontal: 25.0, // Adjust horizontal padding as needed
                  vertical: 10.0, // Adjust vertical padding as needed
                ),
                  backgroundColor: Color(0xFF683d7d),
                ),
                child: Text(
                  "Enter ➩",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Plus Jakarta Sans",
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ),
            new Text('',),
            new Text('',),
            new Text('',),
            new Text('',),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

