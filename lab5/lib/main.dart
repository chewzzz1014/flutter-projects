import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import './dashboard.dart';
import './otp/otp_main.dart';
import './engineer/add_engineer.dart';

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
            textTheme:
                GoogleFonts.wellfleetTextTheme(Theme.of(context).textTheme),
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
  List<Map<String, dynamic>> factories = [
    {
      'name': 'Factory 1',
      'power_consumption': 0.0,
      'steam_pressure': 0.0,
      'steam_flow': 0.0,
      'water_level': 0.0,
      'power_freq': 0.0,
      'date': '--:--',
      'engineer_list': [
        {'name': 'Tim', 'phone': '109219938'},
        {'name': 'John Doe', 'phone': '1234567891'},
        {'name': 'Jeans', 'phone': '23058434'},
        {'name': 'Tim', 'phone': '109219938'},
        {'name': 'John Doe', 'phone': '1234567891'},
        {'name': 'Jeans', 'phone': '23058434'},
        {'name': 'Tim', 'phone': '109219938'},
        {'name': 'John Doe', 'phone': '1234567891'},
        {'name': 'Jeans', 'phone': '23058434'},
      ],
    },
    {
      'name': 'Factory 2',
      'power_consumption': 1549.7,
      'steam_pressure': 34.19,
      'steam_flow': 22.82,
      'water_level': 55.14,
      'power_freq': 50.08,
      'date': DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()).toString(),
      'engineer_list': [
        {'name': 'Lim', 'phone': '14376025'},
        {'name': 'Joseph Kim', 'phone': '4968830583'},
      ],
    },
    {
      'name': 'Factory 3',
      'power_consumption': 0.0,
      'steam_pressure': 0.0,
      'steam_flow': 0.0,
      'water_level': 0.0,
      'power_freq': 0.0,
      'date': '--:--',
      'engineer_list': [],
    },
    {
      'name': 'Factory 4',
      'power_consumption': 1549.7,
      'steam_pressure': 34.19,
      'steam_flow': 22.82,
      'water_level': 55.14,
      'power_freq': 50.08,
      'date': DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()).toString(),
      'engineer_list': [],
    },
  ];
  int currentFactoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return Dashboard(
    //   factories: factories,
    //   currentFactoryIndex: currentFactoryIndex,
    //   updateCurrentFactory: updateCurrentFactory,
    // );
    // return OTPMain();
    return EngineerForm(
      factories: factories,
      currentFactoryIndex: currentFactoryIndex,
      updateEngineerList: updateEngineerList,
    );
  }

  void updateCurrentFactory(int index) {
    setState(() {
      currentFactoryIndex = index;
    });
  }

  void updateEngineerList(String name, String phone) {
    setState(() {
      factories[currentFactoryIndex]['engineer_list'].add({
        'name': name,
        'phone': phone,
      });
    });
  }
}
