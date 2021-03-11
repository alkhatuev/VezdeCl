import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Image.asset(
            'image/pizza.png',
            width: 120,
            height: 128,
          ),
          Text('Укажите адрес доставки',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 30.0)),
          Text('Хотим убедиться, что сможем доставить Вам еду',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 17.0)),
        ],
      ),
    );
  }
}
