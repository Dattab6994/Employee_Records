import 'dart:async';
import 'package:flutter/material.dart';

import 'employee_list.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const EmployeeListViewPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pink.shade400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(size: 250),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Welcome to Employee Record Application',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    height: 2),
              ),
            )
          ],
        ));
  }
}
