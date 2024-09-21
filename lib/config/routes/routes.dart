import 'package:auto_route/auto_route.dart';
import 'package:bloc_prac_2/config/routes/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  static const String _sendingPage = '/sending_page';
  static const String  _savedDataPage = '/saved_data_page';
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SendingRoute.page, initial: true, path: _sendingPage),
        AutoRoute(page: SavedDataRoute.page, path: _savedDataPage),
      ];
}