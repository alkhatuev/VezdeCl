import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/menu');
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.red,
                  child: Text(
                    'Переход на второй экран',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
