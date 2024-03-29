import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_appbar/pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
        ]);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter AppBar Custom',
            theme: _theme(),
            home: HomePage(title: 'Home Page'),
        );
    }
}

ThemeData _theme() =>
    ThemeData(
        fontFamily: 'Montserrat',
        canvasColor: Colors.white,
        primaryColor: Colors.orangeAccent,
    );

