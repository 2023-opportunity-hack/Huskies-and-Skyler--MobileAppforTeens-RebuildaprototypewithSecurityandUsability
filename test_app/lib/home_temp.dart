import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:test_app/theme/theme_helper.dart';
import 'package:test_app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(Hometemp());
}

class Hometemp extends StatefulWidget {
  @override
  _HometempState createState() => _HometempState();
}

class _HometempState extends State<Hometemp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'safe_space_30',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreenContainerScreen,
      routes: AppRoutes.routes,
    );
  }
}