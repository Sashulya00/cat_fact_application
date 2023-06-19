import 'package:cat_fact_application/data/services/network_services_impl.dart';
import 'package:cat_fact_application/presentation/cats_fact_archive_screen/cats_fact_archive_screen.dart';
import 'package:cat_fact_application/presentation/widgets/cats_photo_and_fact_widget.dart';
import 'package:flutter/material.dart';

class CatsFactLayout extends StatefulWidget {
  const CatsFactLayout({super.key});

  @override
  State<CatsFactLayout> createState() => _CatsFactLayoutState();
}

class _CatsFactLayoutState extends State<CatsFactLayout> {
  static const title = 'Cats fact';
  static const spaces = SizedBox(height: 34.0);
  String fact = 'initial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text(title),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            spaces,
            CatsPhotoFactWidget(catFact: fact),
            spaces,
            spaces,
            SizedBox(
              height: 50,
              width: 200,
              child: FloatingActionButton(
                onPressed: () async {
                  final service = NetworkServicesImpl();
                  final newFact = await service.fetchFacts();
                  setState(() {
                    fact = newFact;
                  });
                },
                child: const Text('New Facts'),
              ),
            ),
            spaces,
            Container(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 50,
                width: 200,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CatsFactArchiveScreen()),
                    );
                  },
                  child: const Text('Archive'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
