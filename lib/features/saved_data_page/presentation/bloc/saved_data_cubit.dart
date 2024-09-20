import 'package:bloc_prac_2/features/saved_data_page/presentation/bloc/saved_data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SavedDataCubit extends Cubit<SavedDataState> {
  SavedDataCubit() : super(SavedDataInitialState());

  void attemptToSaveData() async {
    try {
      emit(SavedDataLoadingState());
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String firstName = prefs.getString('First Name') ?? '';
      String lastName = prefs.getString('Last Name') ?? '';
      String email = prefs.getString('Email') ?? '';
      emit(SavedDataLoadedState(
          firstName: firstName, lastName: lastName, email: email));
    } catch (e) {
      emit(SavedDataErrorState(errorMessage: e.toString()));
    }
  }
}
