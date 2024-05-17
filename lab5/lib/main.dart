import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import './dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            home: MyAppExtension(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.wellfleetTextTheme(Theme.of(context).textTheme),
            ),
          );
        },
    );
  }
}

class MyAppExtension extends StatefulWidget {
  const MyAppExtension({super.key});

  @override
  State<MyAppExtension> createState() => _MyAppExtensionState();
}

class _MyAppExtensionState extends State<MyAppExtension> {

  @override
  Widget build(BuildContext context) {
    return Dashboard();
  }
}