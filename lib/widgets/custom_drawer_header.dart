import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
    final Color firstColor;
    final Color secondColor;

    CustomDrawerHeader(
        {this.firstColor = Colors.lightBlueAccent, this.secondColor = Colors
            .blueAccent});

    @override
    Widget build(BuildContext context) {
        return DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                    firstColor,
                    secondColor
                ])
            ),
            child: Container(

                child: Column(
                    children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                color: Colors.black
                            ),
                          child: Material(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(60.0)),
                              child: Padding(
                                  padding: EdgeInsets.all(
                                      15.0),
                                  child: Image.asset(
                                      'assets/images/logo.png',
                                      height: 70,
                                      width: 70,),
                              ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text('Flutter Navigation',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic
                                ),
                            ),
                        ),
                    ],
                ),
            )
        );
    }
}
