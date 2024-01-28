import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/features/main/view/screens/home_screen.dart';
import 'package:ecommerce_app/features/main/view_model/models/category_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({
    super.key,
    required this.categoryData,
  });
  CategoryModel categoryData;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              right: screenSize.width * .04,
              left: screenSize.width * .04,
              top: screenSize.height * .02,
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
                          categoryData.name,
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
                  height: screenSize.height * .03,
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 15,
                  childAspectRatio: .89 / 1.1,
                  crossAxisCount: 2,
                  mainAxisSpacing: MediaQuery.of(context).size.height / 90,
                  children: List.generate(10, (i) {
                    return InkWell(
                      onTap: () {},
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
