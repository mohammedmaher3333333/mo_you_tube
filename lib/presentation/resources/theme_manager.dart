import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/resources/color_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';
import 'package:mo_you_tube/presentation/resources/values_manager.dart';

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: ColorManager.lightPrimary,
    scaffoldBackgroundColor: ColorManager.lightPrimary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.lightPrimary,
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    iconTheme: IconThemeData(
      color: ColorManager.black,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.lightPrimary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(
        fontSize: AppSize.s16,
        color: ColorManager.white,
      ),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorManager.lightPrimary,
    ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey,
      buttonColor: ColorManager.lightPrimary,
      splashColor: ColorManager.lightPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
        backgroundColor: ColorManager.lightPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge:
          getSemiBoldStyle(color: ColorManager.black, fontSize: AppSize.s16),
      headlineLarge:
          getSemiBoldStyle(color: ColorManager.black, fontSize: AppSize.s16),
      headlineMedium:
          getRegularStyle(color: ColorManager.black, fontSize: AppSize.s16),
      titleMedium:
          getMediumStyle(color: ColorManager.black, fontSize: AppSize.s16),
      titleSmall:
          getRegularStyle(color: ColorManager.black, fontSize: AppSize.s16),
      bodyLarge:
          getRegularStyle(color: ColorManager.black, fontSize: AppSize.s16),
      bodySmall:
          getRegularStyle(color: ColorManager.black, fontSize: AppSize.s16),
      bodyMedium:
          getRegularStyle(color: ColorManager.black, fontSize: AppSize.s16),
      labelSmall:
          getBoldStyle(color: ColorManager.lightPrimary, fontSize: AppSize.s16),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: AppSize.s16),
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: AppSize.s16),
      errorStyle: getRegularStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.lightPrimary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.lightPrimary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.lightPrimary,
      selectedIconTheme: IconThemeData(
        color: ColorManager.black,
        size: AppSize.s30,
      ),
      selectedLabelStyle: TextStyle(color: ColorManager.black),
      selectedItemColor: ColorManager.black,
      unselectedIconTheme: IconThemeData(
        color: ColorManager.black,
        size: AppSize.s30,
      ),
      unselectedItemColor: ColorManager.black,
      unselectedLabelStyle: TextStyle(color: ColorManager.black),
    ),
  );


  static final ThemeData darkTheme = ThemeData(
    primaryColor: ColorManager.darkPrimary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorManager.darkPrimary,
    cardTheme: CardTheme(
      color: ColorManager.darkGrey,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.darkPrimary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.darkPrimary,
      titleTextStyle:
          getRegularStyle(fontSize: AppSize.s16, color: ColorManager.white),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorManager.darkPrimary,
    ),
    textTheme: TextTheme(
      displayLarge:
          getSemiBoldStyle(color: ColorManager.white, fontSize: AppSize.s16),
      headlineLarge:
          getSemiBoldStyle(color: ColorManager.white, fontSize: AppSize.s16),
      headlineMedium:
          getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
      titleMedium:
          getMediumStyle(color: ColorManager.white, fontSize: AppSize.s16),
      titleSmall:
          getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
      bodyLarge:
          getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
      bodySmall:
          getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
      bodyMedium:
          getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
      labelSmall:
          getBoldStyle(color: ColorManager.darkPrimary, fontSize: AppSize.s16),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
      labelStyle:
          getMediumStyle(color: ColorManager.white, fontSize: AppSize.s16),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.white, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
    iconTheme: IconThemeData(
      color: ColorManager.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.darkPrimary,
      selectedIconTheme: IconThemeData(
        color: ColorManager.white,
        size: AppSize.s30,

      ),
      selectedLabelStyle: TextStyle(color: ColorManager.white),
      selectedItemColor: ColorManager.white,
      unselectedIconTheme: IconThemeData(
        color: ColorManager.white,
        size: AppSize.s30,
      ),
      unselectedItemColor: ColorManager.white,
      unselectedLabelStyle: TextStyle(color: ColorManager.white),
    ),
  );
}
