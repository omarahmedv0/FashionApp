import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordManager extends StatelessWidget {
  const PasswordManager({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          margin: EdgeInsets.only(
            bottom: screenSize.width * 0.03,
            top: 0,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(1, -1), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(top: screenSize.width * 0.03),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width - screenSize.width / 8,
                      height: screenSize.height / 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: AppColors.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Change Password',
                            style: AppFonts.getTitleSmallFont(
                              context,
                              fontColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
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
                        'Password Manager',
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
              customTextFormField(
                context,
                labelText: 'Current Password',
                hintText: '************************',
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: AppFonts.getCaptionFont(
                      context,
                      fontColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              customTextFormField(
                context,
                labelText: 'New Password',
                hintText: '************************',
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              customTextFormField(
                context,
                labelText: 'Confirm New Password',
                hintText: '************************',
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
