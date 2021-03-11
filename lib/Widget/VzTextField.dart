import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class VZTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:


      TextField(
        decoration:
        InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 28.5),    //ширина окна
          enabledBorder:OutlineInputBorder(

              borderSide: BorderSide(color:Colors.grey[200]),
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          focusedBorder: OutlineInputBorder(

              borderSide: BorderSide(color: Colors.grey[200]),
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          prefixIcon:
          Icon(Icons.location_on), //иконка была скачена
          fillColor:Colors.grey[200] ,
          hintText:"Введите адрес",
          filled: true,

        ),
      ),


    );


  }


}