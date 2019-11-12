import 'package:flutter/material.dart';
import 'package:flutter_custom_appbar/common/custom_list_tile.dart';
import 'package:flutter_custom_appbar/widgets/app_bar_search.dart';
import 'package:flutter_custom_appbar/widgets/app_bar_menu_search.dart';

class HomePage extends StatelessWidget {
    final String title;

    HomePage({Key key, this.title}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                appBar: AppBarMenuSearchWidget(
                    height: 150.0,
                ),
                body: Center(
                    child: FlutterLogo(
                        size: MediaQuery.of(context).size.width / 2,
                    ),
                ),
                drawer: Drawer(
                   child: ListView(
                       children: <Widget>[
                           DrawerHeader(
                               decoration: BoxDecoration(
                                   gradient: LinearGradient(colors: <Color>[ Colors.lightBlueAccent, Colors.blueAccent])
                               ),
                               child: Text('Header'),
                           ),
                           CustomListTile(title: 'Profile', icon: Icons.person,),
                           CustomListTile(title: 'Profile', icon: Icons.person,),
                           CustomListTile(title: 'Profile', icon: Icons.person,),
                       ],
                   ),
                ),
            ),
        );
    }
}


