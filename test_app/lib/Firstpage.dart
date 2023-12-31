import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("How to Login"),
      // ),
      body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/safespacebg.png'
            ),
            fit: BoxFit.fill,
          ), // Decoration Image
        ),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Align(alignment: Alignment.center),

            Padding(
              padding: EdgeInsets.all(10.0), // Add outer padding
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tictactoe');
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  foregroundColor: Colors.white, padding: EdgeInsets.symmetric(
                  horizontal: 150, // Adjust horizontal padding as needed
                  vertical: 15.0, // Adjust vertical padding as needed
                ),
                  backgroundColor: Color(0xFF683d7d),
                ),
                child: Text(
                  "Continue ➩",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Plus Jakarta Sans",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            new Text('',),
            new Text('',),
            new Text('',),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

