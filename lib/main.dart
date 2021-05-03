import 'package:flutter/material.dart';
import 'package:flutter_dialog_bug/about.dart';
import 'package:flutter_dialog_bug/help.dart';
import 'package:flutter_dialog_bug/settings.dart';

import 'add_bottom_sheet.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: BottomNavWidget(),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              addItem(context);
            },
            hoverElevation: 5,
            backgroundColor: Colors.amber,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: _onTabTapped,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "HOME"),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
              BottomNavigationBarItem(icon: Icon(Icons.help), label: "help"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        ),
        routes: {
          "HomeScreen": (_) => HomeScreen(),
          "AboutScreen": (_) => AboutScreen(),
          "HelpScreen": (_) => HelpScreen(),
          "SettingsScreen": (_) => SettingsScreen(),
        });
  }

  Widget BottomNavWidget() {
    switch (_currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return AboutScreen();
      case 2:
        return HelpScreen();
      case 3:
        return SettingsScreen();
    }
  }

  void addItem(BuildContext context) {
    print("addItem $context");
    new AddBottomSheet(context).showDialog();
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
