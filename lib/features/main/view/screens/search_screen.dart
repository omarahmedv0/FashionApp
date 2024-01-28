import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/main/view/screens/home_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/product_details.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .04,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: customNavigatorButton(
                        context,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Search',
                      style: AppFonts.getTitleMidFont(context),
                    ),
                    const Spacer(flex: 2)
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: screenSize.height * .05,
                        child: customTextFormField(
                          context,
                          hintText: 'Search',
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * .02,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          IconAssetsManager.searchIcon,
                          width: screenSize.width * .05,
                          height: screenSize.width * .05,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Result for "Jacket"',
                      style: AppFonts.getTitleSmallFont(context),
                    ),
                    Text(
                      '6,340 founds',
                      style: AppFonts.getTitleSmallFont(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 15,
                  childAspectRatio: .89 / 1.1,
                  crossAxisCount: 2,
                  mainAxisSpacing: MediaQuery.of(context).size.height / 70,
                  children: List.generate(10, (i) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailsScreen(),
                          ),
                        );
                      },
                      child: const CustomProductItem(),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
