import 'package:cat_fact_application/business_logic/cats_fact_bloc/content_bloc.dart';
import 'package:cat_fact_application/data/repository/repository.dart';
import 'package:cat_fact_application/presentation/cats_fact_screen/cats_fact_layout.dart';
import 'package:cat_fact_application/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatsFactScreen extends StatelessWidget {
  const CatsFactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContentBloc(getIt<Repository>()),
      child: const CatsFactLayout(),
    );
  }
}
