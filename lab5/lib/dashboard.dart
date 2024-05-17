import 'package:flutter/material.dart';
import './factory_dashboard.dart';

const kBackgroundColor = Color(0xFF1E1E1E);
const kAccentColor = Color(0xFFFFC107);
const kTextColor = Color(0xFFFFFFFF);
const kIconColor = Color(0xFF9E9E9E);

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory 2',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        color: const Color(0xFFBDBDBD),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FactoryDashboard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFactoryButton('Factory 1', context),
                _buildFactoryButton('Factory 2', context),
              ],
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'profile', icon: Icon(Icons.account_box)),
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'settings', icon: Icon(Icons.settings)),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget _buildFactoryButton(String label, BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;

    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(
            horizontal: currentWidth * 0.05,
            vertical: currentHeight * 0.015
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            currentWidth * 0.03,
            currentHeight * 0.01,
            currentWidth * 0.03,
            currentHeight * 0.005
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.factory, color: kBackgroundColor),
            Text(
              label,
              style: const TextStyle(
                color: kBackgroundColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
