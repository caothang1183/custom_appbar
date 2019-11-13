import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
    final String title;
    final IconData icon;
    final Function onHandleTap;
    final Color color;

    CustomListTile({@required this.title, @required this.icon, this.onHandleTap, this.color = Colors.lightBlueAccent});

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Container(
//                decoration: BoxDecoration(
//                    border: Border(
//                        bottom: BorderSide(color: Colors.grey)
//                    )
//                ),
              child: InkWell(
                  splashColor: color,
                  onTap: onHandleTap,
                  child: Container(
                      height: 50.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                      Icon(icon),
                                      Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(title, style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                          ),),
                                      ),
                                  ],
                              ),
                              Icon(Icons.arrow_right),
                          ],
                      ),
                  ),
              ),
            ),
        );
    }
}
