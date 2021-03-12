import 'package:client/pages/Home.dart';
import 'package:client/pages/Menu.dart';
import 'package:client/pages/SplashScreen.dart';
import 'package:flutter/material.dart';

// Запуск приложения
void main() => runApp(MyApp());

// Основной виджет приложения
class MyApp extends StatelessWidget {
  // Формируем маршрутизацию приложения
  final routes = <String, WidgetBuilder>{
    // Путь, по которому создаётся Home Screen
    '/Menu': (BuildContext context) => Menu()
  };
  // Необходимо переопределить метод строительства инстанса виджета
  @override
  Widget build(BuildContext context) {
    // Это будет приложение с поддержкой Material Design
    return MaterialApp(
      // в котором будет Splash Screen с указанием следующего маршрута
      home: SplashScreen(nextRoute: '/Menu'),
      // передаём маршруты в приложение
      routes: routes,
    );
  }
}