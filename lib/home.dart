
import 'package:flutter/material.dart';

import 'add_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.purple,
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              addItem(context);
            },
            child: Text("Show Bottom Sheet"),
          ),
        ),
      ),
    );
  }
}


void addItem(BuildContext context) {
  print("addItem $context");
  new AddBottomSheet(context).showDialog();
}