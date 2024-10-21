import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle _getTextStyleTheme(double fontSize, FontWeight fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    fontWeight: fontWeight,
  );
}

TextStyle _getTextStyleItalic(
    double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    fontWeight: fontWeight,
    color: color,
    fontStyle: FontStyle.italic,
  );
}
// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s15, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getRegularStyleTheme({double fontSize = FontSize.s16}) {
  return _getTextStyleTheme(fontSize, FontWeightManager.regular);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s15, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getMediumStyleTheme({double fontSize = FontSize.s15}) {
  return _getTextStyleTheme(fontSize, FontWeightManager.medium);
}

// medium style

TextStyle getLightStyle(
    {double fontSize = FontSize.s10, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// bold style

TextStyle getBoldStyle({double fontSize = FontSize.s10, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s13, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}

TextStyle getSemiBoldStyleTheme({double fontSize = FontSize.s17}) {
  return _getTextStyleTheme(fontSize, FontWeightManager.semiBold);
}

// Italic style
TextStyle getItalicStyle({
  double fontSize = FontSize.s20,
  required Color color,
}) {
  return _getTextStyleItalic(fontSize, FontWeightManager.regular, color);
}

TextStyle getLightItalicStyle({
  double fontSize = FontSize.s20,
  required Color color,
}) {
  return _getTextStyleItalic(fontSize, FontWeightManager.light, color);
}
