import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VZButton extends StatefulWidget {
  final String text;
  final Function onTap;

  VZButton({this.text, this.onTap, style});

  @override
  _VZButtonState createState() => _VZButtonState();
}

class _VZButtonState extends State<VZButton> {
  StreamController<double> opacityController = StreamController<double>()
    ..sink.add(1.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTapDown: (tapDetail) {
        opacityController.add(0.7);
      },
      onTapUp: (tapDetail) {
        opacityController.add(1);
      },
      onTap: widget.onTap,
      child: StreamBuilder<double>(
        stream: opacityController.stream,
        builder: (context, opacity) {
          return Container(
              height: 48,
              decoration: BoxDecoration(
                  color: Colors.grey[200].withOpacity(opacity.data),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(widget.text),
              ));
        },
      ),
    );
  }
}
