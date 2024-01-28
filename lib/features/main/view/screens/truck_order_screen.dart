import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:flutter/material.dart';

class TruckOrderScreen extends StatelessWidget {
  const TruckOrderScreen({super.key});

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
                        'Truck Order',
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
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Order Details',
                      style: AppFonts.getTitleSmallFont(context),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Expected Delivery Date',
                        style: AppFonts.getCaptionFont(context),
                      ),
                      Text(
                        '03 Sep 2023',
                        style: AppFonts.getCaptionFont(
                          context,
                          fontColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tracking ID',
                        style: AppFonts.getCaptionFont(context),
                      ),
                      Text(
                        'TRK48919814',
                        style: AppFonts.getCaptionFont(
                          context,
                          fontColor: Colors.black,
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Order Status',
                  style: AppFonts.getTitleSmallFont(context),
                ),
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              CustomStepItem(
                stateMessage: 'Order Placed',
                date: '23 Aug 2023, 2:43 PM',
                icon: IconAssetsManager.orderListIcon,
                isDone: true,
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomStepItem(
                stateMessage: 'In Progress',
                date: '23 Aug 2023, 4:12 PM',
                icon: IconAssetsManager.productIcon,
                isDone: true,
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomStepItem(
                stateMessage: 'Shipped',
                date: 'Expected 02 Sep 2023',
                icon: IconAssetsManager.shippingTruckIcon,
                isDone: false,
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomStepItem(
                stateMessage: 'Delivered',
                date: '03 Sep 2023',
                icon: IconAssetsManager.orderDeliveredIcon,
                isDone: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomStepItem extends StatelessWidget {
  CustomStepItem({
    super.key,
    required this.stateMessage,
    required this.date,
    required this.icon,
    required this.isDone,
  });

  String stateMessage;
  String date;
  bool isDone;
  String icon;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color:
              isDone == true ? AppColors.primary : Colors.grey.withOpacity(.3),
          size: screenSize.width * .08,
        ),
        SizedBox(
          width: screenSize.width * .04,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stateMessage,
              style: AppFonts.getTitleSmallFont(context),
            ),
            Text(
              date,
              style: AppFonts.getCaptionFont(
                context,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          icon,
          width: screenSize.width * .07,
          height: screenSize.width * .07,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
