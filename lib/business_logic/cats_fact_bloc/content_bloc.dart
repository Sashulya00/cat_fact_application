import 'package:cat_fact_application/data/model/cats_model.dart';
import 'package:cat_fact_application/data/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'content_event.dart';
part 'content_state.dart';

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  final Repository repository;

  ContentBloc(this.repository) : super(CatsFactInitial()) {
    on<LoadingContentEvent>(
      (event, emit) async {
        try {
          final facts = await repository.fetchFacts();
          final image = await repository.fetchImage();
          emit(
            LoadedState(
              CatsImageFactModel(image: image, fact: facts),
            ),
          );
        } catch (e) {
          emit(ErrorState(e));
        }
      },
    );
  }
}
