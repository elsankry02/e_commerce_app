import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_app/features/account/presentation/view/account_page.dart';
import 'package:e_commerce_app/features/category/presentation/view/category_page.dart';
import 'package:e_commerce_app/features/home/presentation/view/home_page.dart';
import 'package:e_commerce_app/features/layout/navigation_menu.dart';
import 'package:e_commerce_app/features/splash/splash_page.dart';
import 'package:e_commerce_app/features/wishlist/presentation/view/wishlist_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AccountRoute.page),
    AutoRoute(page: CategoryRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: NavigationMenuRoute.page),
    AutoRoute(page: WishlistRoute.page),
    AutoRoute(page: SplashRoute.page),

    // AutoRoute(page: ),
  ];
}
