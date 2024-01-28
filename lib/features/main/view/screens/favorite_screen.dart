import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/features/main/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          right: screenSize.width * .04,
          left: screenSize.width * .04,
          top: screenSize.height * .02,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'My WishList',
                style: AppFonts.getTitleMidFont(
                  context,
                  fontSize: 23,
                ),
              ),
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
            SizedBox(
              height: screenSize.height * .1,
            ),
          ],
        ),
      ),
    );
  }
}
