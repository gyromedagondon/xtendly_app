import 'package:flutter/material.dart';

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(200, 60),
    backgroundColor: Colors.white,
    elevation: 200,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(60),
    )));

ElevatedButton defaultbutton(final String text) {
  return ElevatedButton(
    onPressed: () {},
    onHover: ((value) {}),
    child: Text(
      text,
      style: TextStyle(fontSize: 22, color: Colors.black, letterSpacing: 3),
    ),
    style: buttonStyle,
  );
}
