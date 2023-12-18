import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextField(String hintText) {
  return TextField(
    keyboardType: TextInputType.visiblePassword,
    // controller: controller,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      height: 1.9,
    ),
    maxLines: 1,
    inputFormatters: [
      LengthLimitingTextInputFormatter(30),
    ],
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.only(left: 14),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(9)),
        borderSide: BorderSide(color: Color(0xFFE6E6E6), width: 00),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        borderSide: BorderSide(color: Color(0xFFE6E6E6), width: 0),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(9)),
        borderSide: BorderSide(color: Color(0xFFE6E6E6), width: 0),
      ),
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Color(0xFF94959B),
        fontSize: 15,
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    ),
  );
}
