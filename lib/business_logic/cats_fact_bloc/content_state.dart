part of 'content_bloc.dart';

@immutable
abstract class ContentState {}

class CatsFactInitial extends ContentState {}

class LoadingState extends ContentState {}

class LoadedState extends ContentState {
  LoadedState(this.model);

  final CatsImageFactModel model;
}

class ErrorState extends ContentState {
  ErrorState(this.error);
  final Object error;
}
