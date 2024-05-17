import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const kBackgroundColor = Color(0xFF1E1E1E);
const kAccentColor = Color(0xFFFFC107);
const kTextColor = Color(0xFFFFFFFF);
const kIconColor = Color(0xFF9E9E9E);

class FactoryDashboard extends StatefulWidget {
  const FactoryDashboard({super.key});

  @override
  State<FactoryDashboard> createState() => _FactoryDashboardState();
}

class _FactoryDashboardState extends State<FactoryDashboard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 65.h,
          width: 90.w,
          margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.05),
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 4.0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'ABD1234 IS UNREACHABLE!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildMonitorTile(context, 'Steam Pressure', '0.0', 'bar'),
                    _buildMonitorTile(context, 'Steam Flow', '0.0', 'T/H'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildMonitorTile(context, 'Water Level', '0.0', '%'),
                    _buildMonitorTile(context, 'Power Frequency', '0.0', 'Hz'),
                  ],
                ),
                const Text(
                  'ABD1234 IS UNREACHABLE!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
        ),
      ],
    );
  }

  Widget _buildMonitorTile(BuildContext context, String label, String value, String unit) {
    return Container(
      color: Colors.white,
      // decoration: Decoration(
      //     borderRadius: BorderRadius.circular(10.0)
      // ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04,
            vertical: MediaQuery.of(context).size.width * 0.03,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.asset('images/low_speedometer.png')
            ),
            Row(
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  unit,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
