import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> sizes = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
    'XXXL',
  ];
  List<Color> colors = [
    Colors.brown,
    Colors.brown.withOpacity(.2),
    Colors.brown.withOpacity(.6),
    Colors.brown.withOpacity(.8),
  ];
  int sizeSelectedIndex = 0;
  int colorSelectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          padding: const EdgeInsets.only(
            top: 1,
          ),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.4),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  10,
                ),
                topRight: Radius.circular(
                  10,
                ),
              )),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .04,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    10,
                  ),
                  topRight: Radius.circular(
                    10,
                  ),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenSize.height * .015,
                    ),
                    Text(
                      'Total Price',
                      style: AppFonts.getCaptionFont(
                        context,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '\$83.99',
                      style: AppFonts.getCaptionFont(
                        context,
                        fontSize: 18,
                        fontColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .02,
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  width: screenSize.width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add to cart',
                      style: AppFonts.getTitleSmallFont(
                        context,
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
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
              Stack(
                children: [
                  Image.asset(
                    ImageAssetsManager.productImage,
                    height: screenSize.height * .4,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * .04,
                      vertical: screenSize.height * .01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customNavigatorButton(context),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(.5),
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                IconAssetsManager.favoriteOutLinedIcon,
                                width: screenSize.width * .05,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: screenSize.width * .04,
                  left: screenSize.width * .04,
                  top: screenSize.height * .02,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Female\'s Style',
                          style: AppFonts.getCaptionFont(
                            context,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.amber,
                              size: screenSize.width * .06,
                            ),
                            Text(
                              '4.9',
                              style: AppFonts.getCaptionFont(
                                context,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    Text(
                      'Light Brown Jacket',
                      style: AppFonts.getTitleMidFont(context),
                    ),
                    SizedBox(
                      height: screenSize.height * .02,
                    ),
                    Text(
                      'Product Details',
                      style: AppFonts.getTitleSmallFont(context),
                    ),
                    SizedBox(
                      height: screenSize.height * .005,
                    ),
                    Text(
                      'Lorem ipsum was conceived as filler text, formatted in a certain way to enable the presentation of graphic elements in documents, without the need for formal copy. ',
                      maxLines: 10,
                      style: AppFonts.getCaptionFont(context),
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(.2),
                    ),
                    Text(
                      'Select Size',
                      style: AppFonts.getTitleSmallFont(context),
                    ),
                    SizedBox(
                      height: screenSize.height * .005,
                    ),
                    SizedBox(
                      height: screenSize.height * .035,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 13,
                            ),
                            decoration: BoxDecoration(
                              color: sizeSelectedIndex == index
                                  ? AppColors.primary
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              sizes[index],
                              style: AppFonts.getCaptionFont(
                                context,
                                fontColor: sizeSelectedIndex == index
                                    ? AppColors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          width: screenSize.width * .04,
                        ),
                        itemCount: sizes.length,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    Text(
                      'Select Color',
                      style: AppFonts.getTitleSmallFont(context),
                    ),
                    SizedBox(
                      height: screenSize.height * .005,
                    ),
                    SizedBox(
                      height: screenSize.height * .035,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: screenSize.width * .08,
                              decoration: BoxDecoration(
                                color: colors[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                            if (colorSelectedIndex == index)
                              Container(
                                width: screenSize.width * .03,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          width: screenSize.width * .04,
                        ),
                        itemCount: colors.length,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .04,
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
