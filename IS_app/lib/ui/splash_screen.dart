import 'package:flutter/material.dart';
import 'package:internetstoresapp/ui/home.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home ()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        color: Colors.white,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            child: Image.asset('assets/Internetstores_Logo.png'),
          ),
        )
    );
  }
}