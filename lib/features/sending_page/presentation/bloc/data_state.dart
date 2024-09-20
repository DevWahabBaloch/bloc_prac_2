abstract class DataState {}

class DataInitialState extends DataState {}

class DataLoadingState extends DataState {}

class DataLoadedState extends DataState {
  final String message;

  DataLoadedState({required this.message});
}

class DataErrorState extends DataState {
  final String errorMessage;

  DataErrorState({required this.errorMessage});
}
