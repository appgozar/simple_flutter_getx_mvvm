import 'package:flutter/material.dart';

class StyleData {
  StyleData._();

  static const primaryColor = Colors.blueGrey;
  static const errorColor = Colors.redAccent;
  static const shadowColor = Colors.black38;

  static const boldTextStyle = TextStyle(fontWeight: FontWeight.bold);

  static ThemeData theme() => ThemeData(
        primarySwatch: primaryColor,
        appBarTheme: AppBarTheme(
          toolbarHeight: 48,
          color: Colors.white,
          shadowColor: Colors.black38,
          elevation: 8,
          titleTextStyle: TextStyle(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.grey.shade800),
        ),
        scaffoldBackgroundColor: Colors.grey.shade100,
        errorColor: errorColor,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: primaryColor.shade50,
          filled: true,
          isDense: true,
          border: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
        ),
      );
}
