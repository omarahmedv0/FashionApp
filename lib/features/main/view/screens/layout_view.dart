import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/features/main/view/screens/cart_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/favorite_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/home_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedPageIndex = 0;
  List<String> mainOutlinedicons = [
    IconAssetsManager.homeOutLinedIcon,
    IconAssetsManager.cartOutLinedIcon,
    IconAssetsManager.favoriteOutLinedIcon,
    IconAssetsManager.profileOutLinedIcon,
  ];
  List<String> mainSolidicons = [
    IconAssetsManager.homeSolidIcon,
    IconAssetsManager.cartSolidIcon,
    IconAssetsManager.favoriteSolidIcon,
    IconAssetsManager.profileSolidIcon,
  ];
  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  changeCurrentPage(int index) {
    setState(
      () {
        selectedPageIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 15,
              left: screenSize.width * .1,
              right: screenSize.width * .1,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: IconButton(
                        padding: const EdgeInsets.all(15),
                        style: selectedPageIndex == index
                            ? const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Colors.white,
                                ),
                              )
                            : null,
                        onPressed: () {
                          changeCurrentPage(index);
                        },
                        icon: Image.asset(
                          selectedPageIndex == index
                              ? mainSolidicons[index]
                              : mainOutlinedicons[index],
                          width: screenSize.width * .06,
                          height: screenSize.width * .06,
                          color: selectedPageIndex == index
                              ? AppColors.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: pages[selectedPageIndex],
      ),
    );
  }
}
