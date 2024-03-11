import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction to Drone Dashboard'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.keyboard_backspace_outlined),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/drone_dashboard.png',
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey[300],
            child: const Center(
              child: Text(
                'Learning Contents',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green[400] : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('checking');
                },
                child: const Text('elevated button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('checking outlined Button');
                },
                child: const Text('outlinedButton'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('checking text button');
                },
                child: const Text('Text Button'),
              ),

              //  this section is unique
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('debug you man');
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.amber,
                    ),
                    Text('back'),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.amber,
                    ),
                    Text('forward'),
                  ],
                ),
              ),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newBool) {
                    setState(() {
                      isSwitch = newBool;
                    });
                  })
            ],
          ),
        ],
      ),
    );
  }
}
