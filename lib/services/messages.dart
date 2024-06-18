import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void successMssg(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 3,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

void errorMssg(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 3,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
