import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class ActiveOrdersContent extends StatelessWidget {
  const ActiveOrdersContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height * .02,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CustomOrderItem(
              buttonText: 'Truck Order',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.truckOrderScreen,
                );
              },
            ),
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey.withOpacity(.2),
              height: screenSize.height * .04,
            ),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}

class CustomOrderItem extends StatelessWidget {
  CustomOrderItem({
    super.key,
    required this.buttonText,
    this.onTap,
  });
  String buttonText;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Row(
      children: [
        Container(
          width: screenSize.width / 4,
          height: screenSize.width / 4,
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
            InkWell(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  buttonText,
                  style: AppFonts.getCaptionFont(
                    context,
                    fontColor: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
