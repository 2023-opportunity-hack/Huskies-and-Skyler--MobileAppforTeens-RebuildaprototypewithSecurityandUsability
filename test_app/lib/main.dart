import 'package:flutter/material.dart';
import 'Firstpage.dart';
import 'Secondpage.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Safe Space',
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
                  Navigator.pushNamed(context, '/first');
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0, // Adjust horizontal padding as needed
                    vertical: 10.0,   // Adjust vertical padding as needed
                  ),
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                ),
                child: Text(
                  "First Screen",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0), // Add outer padding
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0, // Adjust horizontal padding as needed
                    vertical: 10.0,   // Adjust vertical padding as needed
                  ),
                  backgroundColor: Colors.red,
                  primary: Colors.white,
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