import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/features/main/view/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
            vertical: screenSize.height * .02,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  customNavigatorButton(context),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Settings',
                        style: AppFonts.getTitleMidFont(
                          context,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * .08,
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              CustomButtonProfileScreen(
                icon: IconAssetsManager.notifyIcon,
                text: 'Notifications Settings',
              ),
              Divider(
                height: screenSize.height * .03,
                color: Colors.grey.withOpacity(.2),
              ),
              CustomButtonProfileScreen(
                icon: IconAssetsManager.lockIocn,
                text: 'Password Manager',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.passwordManager,
                  );
                },
              ),
              Divider(
                height: screenSize.height * .03,
                color: Colors.grey.withOpacity(.2),
              ),
              CustomButtonProfileScreen(
                icon: IconAssetsManager.personIcon,
                text: 'Delete Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
