abstract class SavedDataState {}

class SavedDataInitialState extends SavedDataState {}

class SavedDataLoadingState extends SavedDataState {}

class SavedDataLoadedState extends SavedDataState {
  final String firstName;
  final String lastName;
  final String email;
  SavedDataLoadedState(
      {required this.firstName, required this.lastName, required this.email});
}

class SavedDataErrorState extends SavedDataState {
  final String errorMessage;

  SavedDataErrorState({required this.errorMessage});
}
