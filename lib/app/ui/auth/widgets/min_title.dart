import 'package:flutter/material.dart';

class MinTitle extends StatelessWidget {
  final String text;

  const MinTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey, fontSize: 16.0),
    );
  }
}
