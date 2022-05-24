import "package:flutter/material.dart";

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: "OpenSans",
);

final kBoxDecorationsStyle = BoxDecoration(
  color: Color.fromARGB(255, 255, 255, 255),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
final kHintTextStyle = TextStyle(
  color: Color.fromARGB(137, 50, 49, 49),
  fontFamily: "OpenSans",
);
