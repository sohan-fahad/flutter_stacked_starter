import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColorConfig {
  // light................
  static const Color _primaryColor = Colors.white;
  static final Color _mainColor = Color.fromARGB(255, 3, 129, 171);
  static final Color _secondColor = Color(0xFF04526B);
  static final Color _accentColor = Color(0xFFADC4C8);
  static final Color _backgroundColor = Color(0xFAF9F6);

//
  // dark................
  static const Color _primaryDarkColor = Color.fromRGBO(37, 37, 37, 1);
  static final Color _mainDarkColor = Color(0x00FFE33E);
  static final Color _secondDarkColor = Color(0xFFE7F6F8);
  static final Color _accentDarkColor = Color.fromRGBO(173, 196, 200, 1);
  static final Color _backgroundDarkColor = Color(0xFF2C2C2C);

// deliveryhobe............
//#ffe33e

  static Color primaryColor(double opacity) {
    return _primaryColor.withOpacity(opacity);
  }

  static Color primaryDarkColor(double opacity) {
    return _primaryDarkColor.withOpacity(opacity);
  }

  static Color backgroundColor(double opacity) {
    return _backgroundColor.withOpacity(opacity);
  }

  static Color backgroundDarkColor(double opacity) {
    return _backgroundDarkColor.withOpacity(opacity);
  }

  static Color mainColor(double opacity) {
    return _mainColor.withOpacity(opacity);
  }

  static Color secondColor(double opacity) {
    return _secondColor.withOpacity(opacity);
  }

  static Color accentColor(double opacity) {
    return _accentColor.withOpacity(opacity);
  }

  static Color mainDarkColor(double opacity) {
    return _mainDarkColor.withOpacity(opacity);
  }

  static Color secondDarkColor(double opacity) {
    return _secondDarkColor.withOpacity(opacity);
  }

  static Color accentDarkColor(double opacity) {
    return _accentDarkColor.withOpacity(opacity);
  }
}

class ThemeConfig {
  static final ThemeData lightThemeData = ThemeData(
    fontFamily: 'Poppins',
    useMaterial3: true,
    primaryColor: ColorConfig.secondColor(1),
    primaryColorDark: ColorConfig.primaryColor(1),
    primaryColorLight: ColorConfig.primaryColor(1),
    canvasColor: ColorConfig.primaryColor(1),
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: ColorConfig.backgroundColor(0.96),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.red,
    ),
    tabBarTheme: TabBarTheme(
      dividerColor: Colors.transparent,
    ),
    buttonTheme: ButtonThemeData(buttonColor: Colors.red),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorConfig.primaryColor(1),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(),
      labelStyle: TextStyle(color: ColorConfig.mainColor(1)),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorConfig.mainColor(0.2)),
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConfig.mainColor(1))),
      prefixIconColor: ColorConfig.mainColor(1),
    ),
    cardTheme: CardTheme(
      color: ColorConfig.primaryColor(1),
      shadowColor: ColorConfig.primaryColor(1),
      surfaceTintColor: ColorConfig.secondColor(1),
    ),
    snackBarTheme: SnackBarThemeData(backgroundColor: Colors.red),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorConfig.accentColor(1),
      selectionColor: ColorConfig.accentColor(1),
      selectionHandleColor: ColorConfig.accentColor(1),
    ),
    indicatorColor: ColorConfig.primaryColor(1),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorConfig.mainColor(1),
      refreshBackgroundColor: ColorConfig.secondColor(1),
      circularTrackColor: ColorConfig.accentColor(1),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: ColorConfig.backgroundColor(1),
      titleTextStyle: TextStyle(
        color: Colors.red,
        backgroundColor: ColorConfig.backgroundColor(1),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorConfig.backgroundColor(1),
      dragHandleColor: ColorConfig.secondColor(1),
      modalBackgroundColor: ColorConfig.backgroundColor(1),

      // elevation: 4,
      // modalBarrierColor: ColorConfig.secondColor(.5),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorConfig.mainColor(1),
      ),
      color: ColorConfig.mainColor(1),
      // shadowColor: ColorConfig.backgroundColor(1),
      // foregroundColor: ColorConfig.backgroundColor(1),
      titleTextStyle: TextStyle(
          color: ColorConfig.primaryColor(1),
          fontSize: 16,
          fontWeight: FontWeight.bold),
      titleSpacing: 0,
      iconTheme: IconThemeData(color: ColorConfig.primaryColor(1)),
      elevation: .2,
      surfaceTintColor: ColorConfig.backgroundColor(1),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorConfig.backgroundColor(1),
    ),
    focusColor: ColorConfig.accentColor(1),
    hintColor: ColorConfig.secondColor(1),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        error: Colors.red,
        primary: ColorConfig.primaryColor(1),
        secondary: ColorConfig.mainColor(1),
        background: ColorConfig.backgroundColor(1),
        tertiary: ColorConfig.accentColor(1),
        inversePrimary: ColorConfig.primaryDarkColor(1),
        brightness: Brightness.light),
    iconTheme: IconThemeData(color: ColorConfig.mainColor(1)),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: ColorConfig.secondColor(1)),
      labelMedium: TextStyle(color: ColorConfig.secondColor(1)),
      labelSmall: TextStyle(color: ColorConfig.secondColor(1)),
      headlineLarge: TextStyle(color: ColorConfig.secondColor(1)),
      headlineMedium: TextStyle(color: ColorConfig.secondColor(1)),
      headlineSmall: TextStyle(color: ColorConfig.secondColor(1)),
      displaySmall: TextStyle(color: ColorConfig.secondColor(1)),
      displayMedium: TextStyle(color: ColorConfig.secondColor(1)),
      displayLarge: TextStyle(color: ColorConfig.secondColor(1)),
      titleSmall: TextStyle(color: ColorConfig.secondColor(1)),
      titleMedium: TextStyle(color: ColorConfig.secondColor(1)),
      titleLarge: TextStyle(color: ColorConfig.secondColor(1)),
      bodyMedium: TextStyle(color: ColorConfig.secondColor(1)),
      bodyLarge: TextStyle(color: ColorConfig.secondColor(1)),
      bodySmall: TextStyle(color: ColorConfig.secondColor(1)),
    ),
  );

  static final ThemeData darkThemeData = ThemeData(
    fontFamily: 'Poppins',
    useMaterial3: true,
    primaryColorDark: ColorConfig.primaryDarkColor(1),
    primaryColorLight: ColorConfig.primaryDarkColor(1),
    canvasColor: ColorConfig.primaryDarkColor(1),
    primaryColor: ColorConfig.primaryDarkColor(1),
    primarySwatch: Colors.blue,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.red,
    ),
    tabBarTheme: TabBarTheme(
      dividerColor: Colors.transparent,
    ),
    buttonTheme: ButtonThemeData(buttonColor: Colors.red),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorConfig.primaryDarkColor(1),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(),
      labelStyle: TextStyle(color: ColorConfig.mainDarkColor(1)),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorConfig.mainDarkColor(0.2)),
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConfig.mainDarkColor(1))),
      prefixIconColor: ColorConfig.mainDarkColor(1),
    ),
    cardTheme: CardTheme(
      color: ColorConfig.primaryDarkColor(1),
      shadowColor: ColorConfig.primaryDarkColor(1),
      surfaceTintColor: ColorConfig.secondDarkColor(1),
    ),
    snackBarTheme: SnackBarThemeData(backgroundColor: Colors.red),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorConfig.accentColor(1),
      selectionColor: ColorConfig.accentColor(1),
      selectionHandleColor: ColorConfig.accentColor(1),
    ),
    indicatorColor: ColorConfig.secondDarkColor(1),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorConfig.mainDarkColor(1),
      refreshBackgroundColor: ColorConfig.secondDarkColor(1),
      circularTrackColor: ColorConfig.accentDarkColor(1),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: ColorConfig.backgroundDarkColor(1),
      titleTextStyle: TextStyle(
        color: Colors.red,
        backgroundColor: ColorConfig.backgroundDarkColor(1),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorConfig.backgroundDarkColor(1),
      dragHandleColor: ColorConfig.secondDarkColor(1),
      modalBackgroundColor: ColorConfig.backgroundDarkColor(1),

      // elevation: 4,
      // modalBarrierColor: ColorConfig.secondDarkColor(.5),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorConfig.mainDarkColor(1),
      ),
      color: ColorConfig.mainDarkColor(1),
      // shadowColor: ColorConfig.backgroundDarkColor(1),
      // foregroundColor: ColorConfig.backgroundDarkColor(1),
      titleTextStyle: TextStyle(
          color: ColorConfig.primaryDarkColor(1),
          fontSize: 16,
          fontWeight: FontWeight.bold),
      titleSpacing: 0,
      iconTheme: IconThemeData(color: ColorConfig.primaryDarkColor(1)),
      elevation: .2,
      surfaceTintColor: ColorConfig.backgroundDarkColor(1),
    ),
    scaffoldBackgroundColor: ColorConfig.backgroundDarkColor(0.96),
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorConfig.backgroundDarkColor(1),
    ),
    focusColor: ColorConfig.accentDarkColor(1),
    hintColor: ColorConfig.secondDarkColor(1),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorConfig.primaryDarkColor(1),
        secondary: ColorConfig.mainDarkColor(1),
        background: ColorConfig.backgroundDarkColor(1),
        tertiary: Color.fromARGB(255, 14, 55, 78),
        inversePrimary: ColorConfig.primaryColor(1),
        brightness: Brightness.dark),
    iconTheme: IconThemeData(color: ColorConfig.mainDarkColor(1)),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: ColorConfig.secondDarkColor(1)),
      labelMedium: TextStyle(color: ColorConfig.secondDarkColor(1)),
      labelSmall: TextStyle(color: ColorConfig.secondDarkColor(1)),
      headlineLarge: TextStyle(color: ColorConfig.secondDarkColor(1)),
      headlineMedium: TextStyle(color: ColorConfig.secondDarkColor(1)),
      headlineSmall: TextStyle(color: ColorConfig.secondDarkColor(1)),
      displaySmall: TextStyle(color: ColorConfig.secondDarkColor(1)),
      displayMedium: TextStyle(color: ColorConfig.secondDarkColor(1)),
      displayLarge: TextStyle(color: ColorConfig.secondDarkColor(1)),
      titleSmall: TextStyle(color: ColorConfig.secondDarkColor(1)),
      titleMedium: TextStyle(color: ColorConfig.secondDarkColor(1)),
      titleLarge: TextStyle(color: ColorConfig.secondDarkColor(1)),
      bodyMedium: TextStyle(color: ColorConfig.secondDarkColor(1)),
      bodyLarge: TextStyle(color: ColorConfig.secondDarkColor(1)),
      bodySmall: TextStyle(color: ColorConfig.secondDarkColor(1)),
    ),
  );
}
