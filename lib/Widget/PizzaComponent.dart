import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:client/Widget/VZButton.dart';
class PizzaComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white ,
      body:
      ListView.builder(
        padding:  EdgeInsets.only(bottom: 10.0),
    itemCount: 15,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Container(
          height: 130,
          width: 100,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            children: <Widget>[
              Container(
                height: 90,
                width: 100,
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'image/IMG_7020.png',
                      height: 90,
                      width: 90,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Пицца LAVAKADO",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text("Ветчина, моцарелла,\nтоматный соус"),
                        VZButton(
                          text: "В корзину",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      );
    } ),
    );
  }
}