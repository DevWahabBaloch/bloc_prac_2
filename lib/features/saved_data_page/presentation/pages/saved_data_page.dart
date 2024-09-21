import 'package:auto_route/auto_route.dart';
import 'package:bloc_prac_2/features/saved_data_page/presentation/bloc/saved_data_cubit.dart';
import 'package:bloc_prac_2/features/saved_data_page/presentation/bloc/saved_data_state.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/bloc/data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SavedDataPage extends StatefulWidget {
  const SavedDataPage({super.key});

  @override
  State<SavedDataPage> createState() => _SavedDataPageState();
}

class _SavedDataPageState extends State<SavedDataPage> {
  @override
  void initState() {
    showData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Receive Data',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<SavedDataCubit, SavedDataState>(
              builder: (context, state) {
                if (state is DataLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is SavedDataLoadedState) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            state.firstName,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            state.lastName,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            state.email,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                if (state is SavedDataErrorState) {
                  return Text(
                    state.errorMessage,
                    style: const TextStyle(color: Colors.red),
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }

  void showData(BuildContext context) {
    context.read<SavedDataCubit>().attemptToSaveData();
  }
}
