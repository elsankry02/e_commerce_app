// Imports (تأكد من صحة المسارات في مشروعك)
import 'package:auto_route/annotations.dart';
import 'package:e_commerce_app/core/components/custom_btm_nav_bar.dart';
import 'package:e_commerce_app/core/utils/theme/app_colors.dart';
import 'package:e_commerce_app/features/account/presentation/view/account_page.dart';
import 'package:e_commerce_app/features/category/presentation/view/category_page.dart';
import 'package:e_commerce_app/features/home/presentation/view/home_page.dart';
import 'package:e_commerce_app/features/wishlist/presentation/view/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

@RoutePage()
class NavigationMenuPage extends StatefulWidget {
  const NavigationMenuPage({super.key});

  @override
  State<NavigationMenuPage> createState() => _NavigationMenuPageState();
}

class _NavigationMenuPageState extends State<NavigationMenuPage> {
  int currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    WishlistPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: _pages),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        color: AppColors.kMainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(index: 0, icon: Iconsax.home_2_copy),
          _navItem(index: 1, icon: Iconsax.category_copy),
          _navItem(index: 2, icon: Iconsax.heart_copy),
          _navItem(index: 3, icon: FontAwesomeIcons.user),
        ],
      ),
    );
  }

  Widget _navItem({required int index, required IconData icon}) {
    return CustomBtmNavBar(
      currentIndex: currentIndex,
      index: index,
      icon: icon,
      onPressed: () => _onItemTapped(index: index),
    );
  }

  void _onItemTapped({required int index}) {
    setState(() {
      currentIndex = index;
    });
  }
}
