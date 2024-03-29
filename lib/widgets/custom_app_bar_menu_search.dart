import 'package:flutter/material.dart';

class AppBarMenuSearchWidget extends StatelessWidget
    implements PreferredSizeWidget {
    final double height;
    final Color mainColor;

    const AppBarMenuSearchWidget({
        Key key,
        @required this.height,
        this.mainColor = Colors.blue,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 20.0,
                                spreadRadius: 5.0,
                                offset: Offset(3.0, 3.0),
                            ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(1.0)),
                        gradient: LinearGradient(
                            colors: <Color>[Colors.white, Colors.white]),
                    ),

//                    child: Container(
//                        padding: EdgeInsets.all(30.0),
                        child: Container(
                            color: mainColor,
                            padding: EdgeInsets.all(5),
                            child: Row(
                                children: <Widget>[
                                    IconButton(
                                        icon: Icon(Icons.menu),
                                        onPressed: () {
                                            Scaffold.of(context).openDrawer();
                                        },
                                    ),
                                    Expanded(
                                        child: Container(
                                            color: Colors.white,
                                            child: TextField(
                                                decoration: InputDecoration(
                                                    hintText: "Search",
                                                    contentPadding: EdgeInsets
                                                        .all(10),
                                                ),
                                            ),
                                        ),
                                    ),
                                    IconButton(
                                        icon: Icon(Icons.verified_user),
                                        onPressed: () {},
                                    ),
                                ],
                            ),
                        ),
//                    ),
                ),
            ],
        );
    }

    @override
    Size get preferredSize => Size.fromHeight(height);

}
