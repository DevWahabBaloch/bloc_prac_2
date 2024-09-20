import 'package:bloc_prac_2/features/sending_page/presentation/bloc/data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitialState());

  void attemptToSaveData({
    required String firstName,
    required String lastName,
    required String email,
  }) async {
    try {
      emit(DataLoadingState());
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('First Name', firstName);
      prefs.setString('Last Name', lastName);
      prefs.setString('Email', email);
      emit(DataLoadedState(message: 'Data saved successfully'));
    } catch (e) {
      emit(DataErrorState(errorMessage: e.toString()));
    }
  }
}
