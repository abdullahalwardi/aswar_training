import 'package:flutter/material.dart';

class Utils {
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String? text) {
    if (text == null) return;
    SnackBar snackBar = SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        style: const TextStyle(fontFamily: 'ArabicFonts'),
      ),
      backgroundColor: Colors.red,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static successSnackBar(String? text) {
    if (text == null) return;
    SnackBar snackBar = SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        style: const TextStyle(fontFamily: 'ArabicFonts'),
      ),
      backgroundColor: Colors.green,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
