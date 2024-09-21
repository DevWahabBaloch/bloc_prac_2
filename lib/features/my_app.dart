
import 'package:auto_route/auto_route.dart';
import 'package:bloc_prac_2/config/routes/routes.dart';
import 'package:bloc_prac_2/features/saved_data_page/presentation/bloc/saved_data_cubit.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/bloc/data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRoute = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DataCubit(),
        ),
        BlocProvider(
          create: (_) => SavedDataCubit(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: _appRoute.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
