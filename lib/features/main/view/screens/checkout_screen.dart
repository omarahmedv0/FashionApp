import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
                            'Order!',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.055,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * .03,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: screenSize.width * .04),
                      child: customNavigatorButton(
                        context,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Checkout',
                    style: AppFonts.getTitleMidFont(context),
                  ),
                  const Spacer(flex: 2)
                ],
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width * .05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shipping Address',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenSize.width * 0.055,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              IconAssetsManager.locationIcon,
                              width: screenSize.width * 0.05,
                              height: screenSize.width * 0.05,
                            ),
                            SizedBox(
                              width: screenSize.width * .01,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenSize.width * 0.04,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Egypt, Cairo, elmozz',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: screenSize.width * 0.04,
                                      color: Colors.black.withOpacity(.4)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              child: Text(
                                'Change',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenSize.width * 0.035,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                    ),
                    Text(
                      'Invoice',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenSize.width * 0.055,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                        1,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.2),
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Sub-Total',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.044,
                                      color: Colors.black.withOpacity(.6),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '\$750.0',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.044,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenSize.height * 0.01,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Delivery Fee',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.044,
                                      color: Colors.black.withOpacity(.6),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '\$50.0',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.044,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Total Cost',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.044,
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '\$800.0',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.044,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.payments_rounded,
                          size: screenSize.width * .04,
                        ),
                        SizedBox(
                          width: screenSize.width * .01,
                        ),
                        Text(
                          'Cash on delivery',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: screenSize.width * 0.04,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                    ),
                    Text(
                      'Order List',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenSize.width * 0.055,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          ProductItem(screenSize: screenSize),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: 4,
                    ),
                    SizedBox(
                      height: screenSize.height * .1,
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

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Brown Jacket',
              style: AppFonts.getTitleSmallFont(
                context,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: screenSize.width / 1.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Size : XL',
                        style: AppFonts.getCaptionFont(context),
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
                  Column(
                    children: [
                      Text(
                        'QTY',
                        style: AppFonts.getCaptionFont(context),
                      ),
                      Text(
                        '2',
                        style: AppFonts.getCaptionFont(
                          context,
                          fontColor: Colors.black,
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
    );
  }
}
