import 'package:flutter/material.dart';
import './factory_dashboard.dart';
import 'package:intl/intl.dart';

const kBackgroundColor = Color(0xFF1E1E1E);
const kAccentColor = Color(0xFFFFC107);
const kTextColor = Color(0xFFFFFFFF);
const kIconColor = Color(0xFF9E9E9E);

DateTime now = DateTime.now();
List<Map<String, dynamic>> factories = [
  {
    'name': 'Factory 1',
    'power_consumption': 0.0,
    'steam_pressure': 0.0,
    'steam_flow': 0.0,
    'water_level': 0.0,
    'power_freq': 0.0,
    'date': '--:--'
  },
  {
    'name': 'Factory 2',
    'power_consumption': 1549.7,
    'steam_pressure': 34.19,
    'steam_flow': 22.82,
    'water_level': 55.14,
    'power_freq': 50.08,
    'date': DateFormat('yyyy-MM-dd HH:mm:ss').format(now).toString()
  },
];

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentFactoryIndex = 0;
  Map<String, dynamic> currentFactory = factories[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory 2',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
          color: const Color(0xFFBDBDBD),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FactoryDashboard(factory: currentFactory),
              _buildFactoryButton(context),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'profile', icon: Icon(Icons.account_box)),
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'settings', icon: Icon(Icons.settings)),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget _buildFactoryButton(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;

    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: factories.length,
                itemBuilder: (BuildContext context, int index) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentFactoryIndex = index;
                        currentFactory = factories[currentFactoryIndex];
                        print(currentFactory['date']);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: currentWidth * 0.015,
                          vertical: currentHeight * 0.015),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.factory, color: kBackgroundColor),
                        Text(
                          factories[index]['name'],
                          style: const TextStyle(
                            color: kBackgroundColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
