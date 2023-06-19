import 'package:cat_fact_application/presentation/widgets/cats_fact_widget.dart';
import 'package:cat_fact_application/presentation/widgets/cats_photo_widget.dart';
import 'package:flutter/material.dart';

class CatsPhotoFactWidget extends StatelessWidget {
  const CatsPhotoFactWidget({super.key, required this.catFact});

  final String catFact;

  static const spaces = SizedBox(height: 34.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CatsPhotoWidget(),
        spaces,
        CatsFactWidget(
          titleFact: catFact,
        ),
      ],
    );
  }
}
