import 'dart:io';

import 'package:client/pages/Home.dart';
import 'package:client/pages/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';


import 'pages/Home.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  dynamic getRoute({ Widget widget, bool fullscreenDialog = false , String name}) {
    if (Platform.isAndroid) {
      return MaterialPageRoute(
          builder: (context) => widget, fullscreenDialog:fullscreenDialog, settings: RouteSettings(name: name));
    } else {
      return CupertinoPageRoute(
          builder: (context) => widget, fullscreenDialog:fullscreenDialog, settings: RouteSettings(name: name));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      title: 'Vezde',
      initialRoute: '/main',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          
          case "/main":
            return getRoute(widget: Home(), name: "/main");
          case "/menu":
            return getRoute(widget: Menu(), name: "/menu");

        }
        return CupertinoPageRoute(
            builder: (context) => Home());
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blueAccent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.blueAccent,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );


//      MultiBlocProvider(
//      providers: [
//      ],
//      child: MaterialApp(
//        color: Colors.black,
//        title: 'Vezde',
//        initialRoute: '/main',
//        onGenerateRoute: (RouteSettings settings) {
//          switch (settings.name) {
//            case "/main":
//              return getRoute(widget: Home(), name: "/main");
//          }
//          return CupertinoPageRoute(
//              builder: (context) => Home());
//        },
//        theme:
//        ThemeData(
//          primarySwatch: Colors.blue,
//          appBarTheme: const AppBarTheme(
//            color: Colors.blueAccent,
//            textTheme: TextTheme(
//              headline6: TextStyle(
//                color: Colors.white,
//                fontWeight: FontWeight.w300,
//                fontSize: 20.0,
//              ),
//            ),
//          ),
//          iconTheme: const IconThemeData(
//            color: Colors.blueAccent,
//          ),
//        ),
//        debugShowCheckedModeBanner: false,
//      ),
//    );
  }
}
