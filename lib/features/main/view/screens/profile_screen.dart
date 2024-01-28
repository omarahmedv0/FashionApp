import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * .02,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Profile',
                  style: AppFonts.getTitleMidFont(
                    context,
                    fontSize: 23,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              CircleAvatar(
                backgroundImage: const AssetImage(
                  ImageAssetsManager.userAvatarImage,
                ),
                radius: screenSize.height * .06,
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Omar Ahmed',
                  style: AppFonts.getTitleMidFont(
                    context,
                    fontSize: 23,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * .04,
                ),
                child: Column(
                  children: [
                    CustomButtonProfileScreen(
                      icon: IconAssetsManager.personIcon,
                      text: 'Your profile',
                    ),
                    Divider(
                      height: screenSize.height * .03,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    CustomButtonProfileScreen(
                      icon: IconAssetsManager.orderListIcon,
                      text: 'My Orders',
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.myordersScreen,
                        );
                      },
                    ),
                    Divider(
                      height: screenSize.height * .03,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    CustomButtonProfileScreen(
                      icon: IconAssetsManager.settingIcon,
                      text: 'Settings',
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.settingScreen,
                        );
                      },
                    ),
                    Divider(
                      height: screenSize.height * .03,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    CustomButtonProfileScreen(
                      icon: IconAssetsManager.infoIcon,
                      text: 'Help Center',
                    ),
                    Divider(
                      height: screenSize.height * .03,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    CustomButtonProfileScreen(
                      icon: IconAssetsManager.lockIocn,
                      text: 'Privacy Policy',
                    ),
                    Divider(
                      height: screenSize.height * .03,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    CustomButtonProfileScreen(
                      icon: IconAssetsManager.inviteIcon,
                      text: 'Invites Friends',
                    ),
                    Divider(
                      height: screenSize.height * .03,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    CustomButtonProfileScreen(
                      icon: IconAssetsManager.logoutIcon,
                      text: 'Log out',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtonProfileScreen extends StatelessWidget {
  CustomButtonProfileScreen({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });
  String text;
  String icon;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                color: AppColors.primary,
                width: screenSize.width * .06,
              ),
              SizedBox(
                width: screenSize.width * .03,
              ),
              Text(
                text,
                style: AppFonts.getTitleSmallFont(
                  context,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.primary,
            size: screenSize.width * .06,
          ),
        ],
      ),
    );
  }
}
