import 'package:flutter/material.dart';

const kTextStyle=TextStyle(
    fontWeight: FontWeight.bold,fontSize: 20,
);
const kTextFieldInputDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
  filled: true,
  fillColor: Colors.black,
  hintText: "Enter City Name..",
  hintStyle: TextStyle(
    color: Colors.white,
  ),
  icon: Icon(
    Icons.location_city,
    color: Colors.black,
    size: 40,
  ),
);