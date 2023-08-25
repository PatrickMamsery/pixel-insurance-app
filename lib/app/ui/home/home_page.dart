import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/login_person.png",
                ),
                const Center(
                  child: Text(
                    "Hello World",
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