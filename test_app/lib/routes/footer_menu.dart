import 'package:flutter/cupertino.dart';

class CommonFooterMenu{
  late BuildContext context;
  CommonFooterMenu(this.context)
  var bnb = BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.location_pin)
        )
      ]

  )

}