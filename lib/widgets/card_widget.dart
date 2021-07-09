import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String data;
  CardWidget(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Card(
        color: Colors.deepOrangeAccent,
        elevation: 10.0,
        child: Center(
          child: Text(
            data,
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
