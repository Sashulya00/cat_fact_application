import 'package:flutter/material.dart';

class CatsPhotoWidget extends StatelessWidget {
  const CatsPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.teal,
      child: const Center(
        child: Text(
          'Cat Photo',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
