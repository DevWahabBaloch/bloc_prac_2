import 'package:auto_route/auto_route.dart';
import 'package:bloc_prac_2/config/routes/routes.dart';
import 'package:bloc_prac_2/core/widget/multi_bloc_provider.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRoute = AppRouter();
    return AppMultiBlocProvider(
      child: MaterialApp.router(
        routerConfig: _appRoute.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
