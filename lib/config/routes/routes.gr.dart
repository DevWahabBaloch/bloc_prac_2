// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:bloc_prac_2/features/my_app.dart' as _i1;
import 'package:bloc_prac_2/features/saved_data_page/presentation/pages/saved_data_page.dart'
    as _i2;
import 'package:bloc_prac_2/features/sending_page/presentation/pages/sending_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MyApp.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MyApp(),
      );
    },
    SavedDataRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SavedDataPage(),
      );
    },
    SendingRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SendingPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.MyApp]
class MyApp extends _i4.PageRouteInfo<void> {
  const MyApp({List<_i4.PageRouteInfo>? children})
      : super(
          MyApp.name,
          initialChildren: children,
        );

  static const String name = 'MyApp';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SavedDataPage]
class SavedDataRoute extends _i4.PageRouteInfo<void> {
  const SavedDataRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SavedDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedDataRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SendingPage]
class SendingRoute extends _i4.PageRouteInfo<void> {
  const SendingRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SendingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SendingRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
