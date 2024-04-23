//Import section
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:calculator/home.dart';
import 'package:device_preview/device_preview.dart';

//Code execution point
void main() {
  runApp(DevicePreview(
    enabled: kDebugMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

//Material design configuration
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //Disabling debug banner
      debugShowCheckedModeBanner: false,
      //All default theme for the app
      theme: ThemeData(

          //AppBar() theme
          appBarTheme: AppBarTheme(
              //color: Color(0xFF505050),
              color: Color(0xFF1C1C1C),
              foregroundColor: Color(0xFFD4D4D2)),

          //Drawer theme
          drawerTheme: DrawerThemeData(
            width: 195,
            backgroundColor: Color(0xFF505050),
          ),

          //TextField() theme
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(color: Color(0xFFD4D4D2)),
            filled: true,
            fillColor: Color(0xFF505050),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFD4D4D2),
                ),
                borderRadius: BorderRadius.circular(3)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFD4D4D2),
                ),
                borderRadius: BorderRadius.circular(3)),
          ),

          //Scaffold() theme
          scaffoldBackgroundColor: Color(0xFFD4D4D2)),

      //App title
      title: "Universal Calculator",

      //Opening page
      home: Home(),
    );
  }
}
