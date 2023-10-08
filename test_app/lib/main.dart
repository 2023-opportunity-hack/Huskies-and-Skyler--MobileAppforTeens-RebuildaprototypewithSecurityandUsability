import 'package:flutter/material.dart';
import 'package:test_app/tictactoe.dart';
import 'package:test_app/Firstpage.dart';
import 'package:test_app/Secondpage.dart';
import 'package:test_app/home_temp.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => Firstpage(),
        '/second': (context) => Secondpage(),
        '/tictactoe': (context) => Tictactoe(),
        '/home_temp': (context) => Hometemp(),
      },
      title: 'main page for safespace',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Safe Space"),
      ),
      body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/safespacebgv2.png'
            ),
            fit: BoxFit.fill,
          ), // Decoration Image
        ),

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,


          children: <Widget>[

            new Align(alignment: Alignment.center),

            // Text(
            //   'Welcome to Safe Space',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 30.0,
            //     fontFamily: "Tahoma",
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),


            Padding(
              padding: EdgeInsets.all(10.0), // Add outer padding
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/first');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, padding: EdgeInsets.symmetric(
                    horizontal: 55.0, // Adjust horizontal padding as needed
                    vertical: 20.0,   // Adjust vertical padding as needed
                  ),
                  backgroundColor: Colors.deepPurple,
                ),
                child: Text(
                  "Begin",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Times New Roman",
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


//
