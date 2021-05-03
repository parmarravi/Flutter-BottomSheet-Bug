import 'package:flutter/material.dart';

class AddBottomSheet {
  BuildContext context;

  AddBottomSheet(this.context);

  showDialog() {
    print("AddBottomSheet $context ");
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(20),
                    topLeft: const Radius.circular(20))),
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 2,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius:
                      BorderRadius.all(const Radius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Hello World",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),

              ],
            ),
          );
        });
  }
}
