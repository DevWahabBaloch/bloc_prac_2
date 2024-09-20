import 'package:bloc_prac_2/features/saved_data_page/presentation/bloc/saved_data_cubit.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/bloc/data_cubit.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/pages/sending_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DataCubit(),
        ),
        BlocProvider(
          create: (context) => SavedDataCubit(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SendingPage(),
      ),
    );
  }
}
