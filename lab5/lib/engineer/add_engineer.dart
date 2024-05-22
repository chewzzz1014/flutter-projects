import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const kBackgroundColor = Color(0xFF1E1E1E);
const kAccentColor = Color(0xFFFFC107);
const kTextColor = Color(0xFFFFFFFF);
const kIconColor = Color(0xFF9E9E9E);

class EngineerForm extends StatefulWidget {
  final List<Map<String, dynamic>> factories;
  final int currentFactoryIndex;
  Function(String, String) updateEngineerList;

  EngineerForm({
    super.key,
    required this.factories,
    required this.currentFactoryIndex,
    required this.updateEngineerList,
  });

  @override
  State<EngineerForm> createState() => _EngineerFormState();
}

class _EngineerFormState extends State<EngineerForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.factories[widget.currentFactoryIndex]['name'],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05),
            child: const Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
          width: 100.w,
          color: const Color(0xFFBDBDBD),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Text(
                  'Invitation',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const Text(
                  'Invite users',
                  style: TextStyle(fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Owner's name",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(),
                          hintText: 'Type here',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Owner's Phone Number",
                            style: TextStyle(fontSize: 20),
                          ),
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
                                  hintText: 'Enter your phone number',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
