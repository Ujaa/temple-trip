import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double value;

  const ProgressBar(
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
      )),
      child: LinearProgressIndicator(
        value: value,
        backgroundColor: Colors.white,
        color: Colors.black,
        minHeight: 8,
      ),
    );
  }
}
