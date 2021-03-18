import 'package:flutter/material.dart';

InputDecoration textDecoration(
    {String label, String hint, GestureDetector suffixIcon}) {
  return InputDecoration(
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.0)),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white70, width: 1.0)),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.0)),
    focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.0)),
    labelStyle: TextStyle(color: Colors.white, fontSize: 16),
    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
    errorStyle: TextStyle(color: Colors.white, fontSize: 16),
    labelText: label,
    hintText: hint,
    suffixIcon: suffixIcon,
  );
}

fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
