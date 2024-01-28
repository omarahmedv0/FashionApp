import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/features/main/view/screens/active_orders_content.dart';
import 'package:flutter/material.dart';

class CompletedOrdersContent extends StatelessWidget {
  const CompletedOrdersContent({super.key});

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
              buttonText: 'Leave Review',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.reviewOrderScreen,
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
