import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EnterEmailForgotPassword extends StatelessWidget {
  const EnterEmailForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: screenSize.width * 0.04,
            top: screenSize.height * 0.05,
            right: screenSize.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customNavigatorButton(context),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Enter your email',
                  style: AppFonts.getTitleMidFont(
                    context,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Enter your email. we will sent a varify code to you.',
                  textAlign: TextAlign.center,
                  style: AppFonts.getCaptionFont(
                    context,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .05,
              ),
              customTextFormField(
                context,
                labelText: 'Email',
                hintText: 'example@gmail.com',
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.verifyCodeForgotPassword,
                        );
                      },
                      child: Text(
                        'Send verify Code',
                        style: AppFonts.getCaptionFont(
                          context,
                          fontColor: AppColors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
