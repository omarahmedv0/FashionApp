import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/features/main/view_model/models/notifications_model.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    notificationsData = [
      NotificationModel(
          id: 1,
          title: 'Order Shipped',
          body:
              'Lorem ipsum was conceived as filler text, formatted in a certain way to enable the presentation of graphic elements in documents, without the need for formal copy.',
          image: Icons.local_shipping_outlined,
          date: DateTime(2024, 1, 4, 20)),
      NotificationModel(
          id: 2,
          title: 'Flash Sale Alert',
          body:
              'Lorem ipsum was conceived as filler text, formatted in a certain way to enable the presentation of graphic elements in documents, without the need for formal copy.',
          image: Icons.warning_amber_outlined,
          date: DateTime(2024, 1, 4, 20)),
      NotificationModel(
          id: 3,
          title: 'Product Review Request',
          body:
              'Lorem ipsum was conceived as filler text, formatted in a certain way to enable the presentation of graphic elements in documents, without the need for formal copy.',
          image: Icons.star_border_outlined,
          date: DateTime(2024, 1, 12, 11)),
    ];
    super.initState();
  }

  List<NotificationModel> notificationsData = [];
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: screenSize.width * .04,
                left: screenSize.width * .04,
                top: screenSize.height * .02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customNavigatorButton(context),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Notifications',
                        style: AppFonts.getTitleMidFont(context),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    child: Text(
                      '2 New',
                      style: AppFonts.getCaptionFont(
                        context,
                        fontColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * .02,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    right: screenSize.width * .04,
                    left: screenSize.width * .04,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(
                            .2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          notificationsData[index].image,
                          size: screenSize.width * .07,
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * .02,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notificationsData[index].title,
                            style: AppFonts.getTitleSmallFont(context),
                          ),
                          SizedBox(
                            width: screenSize.width * .7,
                            child: Text(
                              notificationsData[index].body,
                              maxLines: 3,
                              style: AppFonts.getCaptionFont(
                                context,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: notificationsData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
