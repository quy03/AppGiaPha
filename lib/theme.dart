import 'package:application_gia_pha/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kPrimaryLightColor,
    fontFamily: "Muli",
    appBarTheme: const AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,

    // light_mode
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: Colors.grey.shade200,
      secondary: Colors.grey.shade400,
      inversePrimary: Colors.grey.shade500,
    ),
    // Cấu hình cho Button
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.grey.shade400, // Màu nút
      textTheme: ButtonTextTheme.primary, // Màu văn bản nút
    ),
 
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: kText1Color),
    bodyMedium: TextStyle(color: kText2Color),
  );
}
