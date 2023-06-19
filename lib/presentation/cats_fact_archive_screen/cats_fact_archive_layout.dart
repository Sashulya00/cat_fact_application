import 'package:cat_fact_application/presentation/widgets/cats_photo_and_fact_widget.dart';
import 'package:flutter/material.dart';

class CatsFactArchiveLayout extends StatelessWidget {
  const CatsFactArchiveLayout({super.key});

  static const title = 'Cats fact archive';
  static const spaces = SizedBox(height: 34.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            spaces,
            CatsPhotoFactWidget(
              catFact: '',
            ),
            spaces,
          ],
        ),
      ),
    );
  }
}
