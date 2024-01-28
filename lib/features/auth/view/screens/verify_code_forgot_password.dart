import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VeifyCodeForgotPassword extends StatelessWidget {
  const VeifyCodeForgotPassword({super.key});

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
                  'Verify Code',
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
                  'Please enter the code we just sent to email',
                  textAlign: TextAlign.center,
                  style: AppFonts.getCaptionFont(
                    context,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'example@gmail.com',
                  textAlign: TextAlign.center,
                  style: AppFonts.getCaptionFont(
                    context,
                    fontColor: AppColors.primary,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .05,
              ),
              OtpTextField(
                numberOfFields: 4,
                borderColor: AppColors.primary,
                borderRadius: BorderRadius.circular(20),
                fieldWidth: screenSize.width * .12,
                cursorColor: AppColors.primary,
                focusedBorderColor: AppColors.primary,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                }, // end onSubmit
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.newPasswordScreen,
                          (route) => false,
                        );
                      },
                      child: Text(
                        'Verify',
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
              SizedBox(
                height: screenSize.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t recieve OTP? ',
                    textAlign: TextAlign.center,
                    style: AppFonts.getCaptionFont(
                      context,
                      fontColor: AppColors.black,
                    ),
                  ),
                  Text(
                    'Resend Code',
                    textAlign: TextAlign.center,
                    style: AppFonts.getCaptionFont(
                      context,
                      fontColor: AppColors.primary,
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
