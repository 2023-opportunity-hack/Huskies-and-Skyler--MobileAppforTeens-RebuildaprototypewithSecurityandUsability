import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange [700],
      ), // ThemeData
      initialRoute: '/landing1',
      routes: {
      '/': (context) => SplashScreen (),
      '/landing2': (context) => const ChatScreen () ,
      '/landing1': (context) => const ContactsScreen () ,
      '/home': (context) => const GroupsScreen() ,
      '/tictactoe': (context) => TestScreen(),
      },
    ); // MaterialApp
  }
}