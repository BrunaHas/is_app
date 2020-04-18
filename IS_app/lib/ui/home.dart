import 'package:flutter/material.dart';
import 'package:internetstoresapp/ui/appbar.dart';
import 'package:internetstoresapp/ui/product_list.dart';
import 'package:internetstoresapp/ui/product_form.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar widget
      appBar: InternetstoresAppBar(),

      //List view
      body: new ListView(
        children: <Widget>[

          //Products list
          Container(
            height: 600,
            child: Products(), //

          ),
        ],
      ),

       //Button to create file page
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => new ProductForm()));
          },
        child: Icon(Icons.add),
          backgroundColor: Colors.tealAccent[400],
         ),

    );


  }
}
