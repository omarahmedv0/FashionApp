import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/features/main/view/screens/active_orders_content.dart';
import 'package:ecommerce_app/features/main/view/screens/cancelled_orders_content.dart';
import 'package:ecommerce_app/features/main/view/screens/compeleted_orders_content.dart';
import 'package:flutter/material.dart';

class MyordersScreen extends StatelessWidget {
  const MyordersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return SafeArea(
        child: Scaffold(
      body: DefaultTabController(
        length: 3,
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
                        'My Orders',
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
                height: screenSize.height * .02,
              ),
              TabBar(
                indicatorColor: AppColors.primary,
                labelColor: AppColors.primary,
                unselectedLabelColor: Colors.black.withOpacity(.6),
                //  dividerHeight: 0,
                labelStyle: AppFonts.getTitleSmallFont(
                  context,
                  fontSize: 19,
                ),
                tabs: const [
                  Tab(
                    text: 'Active',
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                  Tab(
                    text: 'Cancelled',
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    ActiveOrdersContent(),
                    CompletedOrdersContent(),
                    CancelledOrdersContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
