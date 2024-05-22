import 'package:flutter/material.dart';

class OTPGetCode extends StatefulWidget {
  const OTPGetCode({super.key});

  @override
  State<OTPGetCode> createState() => _OTPGetCodeState();
}

class _OTPGetCodeState extends State<OTPGetCode> {
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
                'Enter your mobile number to activate your account.',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Image.asset(
                    'images/mys.png',
                    width: 48,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: const Text('+60'),
                  ),
                ],
              ),
            ),
            const Flexible(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter phone number',
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const Text('I agree to terms & conditions'),
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Get Activation Code',
                style: TextStyle(fontSize: 20.0),
              ),
            )),
      ],
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.red;
    }
    return Colors.blue;
  }
}
