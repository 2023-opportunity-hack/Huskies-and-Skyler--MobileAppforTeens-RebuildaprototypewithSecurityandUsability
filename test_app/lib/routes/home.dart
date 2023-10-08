import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar.getAppBar(),
      bottomNavigationBar: CommonFooterMenu(context).getFooterMenu(0),
      body: Center{
        child: const Text('hello')
    }
    )
  }
}
