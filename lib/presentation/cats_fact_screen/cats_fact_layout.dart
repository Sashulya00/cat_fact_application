import 'package:cat_fact_application/business_logic/cats_fact_bloc/content_bloc.dart';
import 'package:cat_fact_application/presentation/cats_fact_archive_screen/cats_fact_archive_screen.dart';
import 'package:cat_fact_application/presentation/widgets/cats_photo_and_fact_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  void initState() {
    context.read<ContentBloc>().add(LoadingContentEvent());
    super.initState();
  }

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
        child: BlocBuilder<ContentBloc, ContentState>(
          builder: (context, state) {
            if (state is CatsFactInitial) {
              return const Text('data');
            } else if (state is LoadingState) {
              return const CircularProgressIndicator();
            } else if (state is LoadedState) {
              return Column(
                children: [
                  spaces,
                  CatsPhotoFactWidget(
                      catFact: state.model.fact!, catImage: state.model.image!),
                  spaces,
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () => context.read<ContentBloc>().add(
                            LoadingContentEvent(),
                          ),
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
                              builder: (context) =>
                                  const CatsFactArchiveScreen(),
                            ),
                          );
                        },
                        child: const Text('Archive'),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              throw Exception();
            }
          },
        ),
      ),
    );
  }
}
