import 'package:bloc_prac_2/features/saved_data_page/presentation/bloc/saved_data_cubit.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/bloc/data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppMultiBlocProvider extends StatelessWidget {
  final Widget child;
  const AppMultiBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) => DataCubit(),
      ),
      BlocProvider(
        create: (_) => SavedDataCubit(),
      )
    ], child: child);
  }
}
