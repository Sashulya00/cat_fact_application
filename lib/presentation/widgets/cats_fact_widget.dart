import 'package:flutter/material.dart';

class CatsFactWidget extends StatelessWidget {
  const CatsFactWidget({super.key, this.titleFact});

  final String? titleFact;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      color: Colors.cyanAccent,
      child: Center(
        child: Text(
          titleFact!,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
