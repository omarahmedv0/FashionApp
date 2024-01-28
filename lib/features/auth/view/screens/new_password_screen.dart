import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: screenSize.width * 0.04,
            top: screenSize.height * 0.08,
            right: screenSize.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'New Password',
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
                  'Your new password must be different from previously used passwords.',
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
                labelText: 'New Password',
                hintText: '*************',
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
                hintText: '*************',
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Create New Password',
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
