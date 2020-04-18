import 'package:flutter/material.dart';

//Class to Popup menu
class PopupMenu extends StatelessWidget {

  VoidCallback onDelete;

  PopupMenu({this.onDelete});

  void showMenuSelection(String value) {
    //Delete case for menu
    switch (value) {
      case 'Delete':
        onDelete();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      padding: EdgeInsets.all(0.0),
      icon: Icon(Icons.more_vert, color: Colors.tealAccent[400]),
      onSelected: showMenuSelection,
      itemBuilder: (BuildContext context) =>
      <PopupMenuEntry<String>>[

        //Delete button
        const PopupMenuItem<String>(
            value: 'Delete',
            child: ListTile(
                leading: Icon(Icons.delete), title: Text('Delete'))),

      ],
    );
  }
}
