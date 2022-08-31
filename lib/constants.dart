import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff1B202C);
const Color kSecondaryColor = Color(0xffFFD831);
const Color kBgColor = Color(0xff090B10);
const double kDefaultPadding = 16.0;
const kDefaultBorder = 8.0;

const InputDecoration kTextFieldDecoration = InputDecoration(
  isDense: true,
  errorStyle: TextStyle(fontFamily: 'ArabicFonts'),
  hintText: 'Username',
  labelText: 'Email',
  labelStyle: TextStyle(color: Colors.grey),
  // hintStyle: TextStyle(color: Colors.white54),
  // fillColor: Colors.white24,
  focusColor: kPrimaryColor,
  prefixIcon: Icon(
    Icons.text_fields_rounded,
  ),
  // contentPadding: EdgeInsets.symmetric(vertical: 40),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(kDefaultBorder)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.all(Radius.circular(kDefaultBorder)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.all(Radius.circular(kDefaultBorder)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.all(Radius.circular(kDefaultBorder)),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent),
    borderRadius: BorderRadius.all(Radius.circular(kDefaultBorder)),
  ),
);
