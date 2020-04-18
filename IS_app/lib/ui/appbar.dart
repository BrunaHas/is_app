import 'package:flutter/material.dart';

//New appbar
class InternetstoresAppBar extends AppBar {
  InternetstoresAppBar({Key key, Widget title})
      : super(
          key: key,
          title: InkWell(
              //Add internetstores logo
              child: Image.asset(
                  'assets/Internetstores_Logo.png',
                  height: 120.0,
                  width: 140.0)
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
        );
}
