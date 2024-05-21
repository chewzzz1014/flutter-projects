import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OTPActivate extends StatefulWidget {
  const OTPActivate({super.key});

  @override
  State<OTPActivate> createState() => _OTPActivateState();
}

class _OTPActivateState extends State<OTPActivate> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Row(
          children: [
            Flexible(
              child: Text(
                'Enter the activation code you received via SMS.',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        const Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'OTP',
                    ),
                  ),
                  Text(
                    '0/6',
                  ),
                ],
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Didn't receive? "),
            Text(
              "Tap here",
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Activate',
                style: TextStyle(fontSize: 20.0),
              ),
            )),
      ],
    );
  }
}
