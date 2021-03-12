import 'package:client/Widget/PizzaComponent.dart';
import 'package:client/Widget/VzTextField.dart';
import 'package:client/Widget/chooseAddress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: VZTextField(),
              ),
              ChooseAddress(),
              Container(
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: SizedBox( width: 740, height: 50,
                      child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: new Text(
                        "Пропустить",
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PizzaComponent()));
                      } )),
              )]),
      ),
    );
  }
}
