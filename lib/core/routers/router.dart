import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_app/features/test/test_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: TestRoute.page, initial: true),
  ];
}
