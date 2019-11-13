import 'package:flutter/material.dart';

class AppBarSearchWidget extends StatelessWidget
    implements PreferredSizeWidget {
    final double height;

    const AppBarSearchWidget({
        Key key,
        @required this.height,
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
                            )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(1.0)),
                        gradient: LinearGradient(
                            colors: <Color>[Colors.white, Colors.white]),
                    ),
                    child: Container(
                        child: AppBar(
                            automaticallyImplyLeading: false,
                            title: Container(
                                color: Colors.white,
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Search',
                                        contentPadding: EdgeInsets.all(10.0)
                                    ),
                                ),
                            ),
                            actions: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.verified_user),
                                    onPressed: () {},
                                )
                            ],
                        ),
                    ),
                ),
            ],
        );
    }

    @override
    Size get preferredSize => Size.fromHeight(height);

}
