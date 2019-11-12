import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
    final String title;
    final IconData icon;

    CustomListTile({@required this.title, @required this.icon});

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
            child: InkWell(
                splashColor: Colors.lightBlueAccent,
                onTap: () {},
                child: Container(
                    height: 40.0,
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
        );
    }
}
