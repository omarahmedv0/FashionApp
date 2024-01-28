import 'dart:ui';

import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewOrderScreen extends StatelessWidget {
  const ReviewOrderScreen({super.key});

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
                            'Submit',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.055,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
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
        body: SingleChildScrollView(
          child: Padding(
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
                          'Leave Review',
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
                Row(
                  children: [
                    Container(
                      width: screenSize.width / 5,
                      height: screenSize.width / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.withOpacity(.2)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          ImageAssetsManager.productImage,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenSize.width / 1.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Brown Jacket',
                                    style: AppFonts.getTitleSmallFont(
                                      context,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Size: XL',
                                        style: AppFonts.getCaptionFont(context),
                                      ),
                                      Text(
                                        ' | QTY: 10pcs',
                                        style: AppFonts.getCaptionFont(context),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$89.99',
                                    style: AppFonts.getTitleSmallFont(
                                      context,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: screenSize.height * 0.04,
                  color: Colors.grey.withOpacity(.2),
                ),
                Text(
                  'How is your order?',
                  style: AppFonts.getTitleLargeFont(
                    context,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  height: screenSize.height * 0.04,
                  color: Colors.grey.withOpacity(.2),
                ),
                Text(
                  'Your overall rating',
                  style: AppFonts.getTitleSmallFont(
                    context,
                    fontColor: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  unratedColor: Colors.grey.withOpacity(.3),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                Divider(
                  height: screenSize.height * 0.04,
                  color: Colors.grey.withOpacity(.2),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Add detailed review',
                    style: AppFonts.getTitleSmallFont(context),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                SizedBox(
                  height: screenSize.height * .15,
                  child: TextField(
                    selectionHeightStyle: BoxHeightStyle.tight,
                    expands: true,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintText: 'Enter here',
                      hintStyle: AppFonts.getCaptionFont(context),
                      labelStyle: AppFonts.getCaptionFont(
                        context,
                        fontColor: AppColors.black,
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: 15,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        borderSide: BorderSide(
                          color: AppColors.grey.withOpacity(.4),
                        ),
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
