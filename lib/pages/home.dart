import 'package:flutter/material.dart';
import 'package:flutter_custom_appbar/common/custom_list_tile.dart';
import 'package:flutter_custom_appbar/pages/item_list.dart';
import 'package:flutter_custom_appbar/widgets/custom_app_bar_menu_search.dart';
import 'package:flutter_custom_appbar/widgets/custom_drawer_header.dart';

class HomePage extends StatelessWidget {
    final String title;

    HomePage({Key key, this.title}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                appBar: AppBarMenuSearchWidget(
                    height: 150.0,
                    mainColor: Colors.orangeAccent,
                ),
                body: Center(
                    child: FlutterLogo(
                        size: MediaQuery
                            .of(context)
                            .size
                            .width / 2,
                    ),
                ),
                drawer: Drawer(
                    child: ListView(
                        children: <Widget>[
                            CustomDrawerHeader(firstColor: Colors.orangeAccent,
                                secondColor: Colors.orange,),
                            CustomListTile(title: 'Item List',
                                icon: Icons.category,
                                color: Colors.orangeAccent,
                                onHandleTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(context,
                                        new MaterialPageRoute(
                                            builder: (context) => ItemList()));
                                },),
                            Divider(),
                        ],
                    ),
                ),
            ),
        );
    }
}


