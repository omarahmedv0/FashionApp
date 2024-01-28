import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/features/onboarding/view_model/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  List<OnboardingModel> onboardingData = [];
  int selectedIndex = 0;
  @override
  void initState() {
    onboardingData = [
      OnboardingModel(
          id: 1,
          title: 'Seamless Shopping Experience',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
          image: ImageAssetsManager.onboardingImage1),
      OnboardingModel(
          id: 2,
          title: 'Wishlist: Where Fashion Dreams Begin',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
          image: ImageAssetsManager.onboardingImage2),
      OnboardingModel(
          id: 3,
          title: 'Swift and Reliable Delivery',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
          image: ImageAssetsManager.onboardingImage3),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          padding: const EdgeInsets.only(
            top: .2,
          ),
          decoration: BoxDecoration(
            color: AppColors.black.withOpacity(.6),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                right: screenSize.height * 0.02,
                left: screenSize.height * 0.02,
                top: screenSize.height * 0.03,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * .07,
                    ),
                    child: Text(
                      onboardingData[selectedIndex].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.2,
                        color: AppColors.black,
                        fontSize: screenSize.width * .07,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Text(
                    onboardingData[selectedIndex].description,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: screenSize.width * .045,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black.withOpacity(.5),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (selectedIndex > 0)
                        IconButton(
                          style: const ButtonStyle(
                            side: MaterialStatePropertyAll(
                              BorderSide(
                                color: AppColors.primary,
                              ),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              AppColors.white,
                            ),
                          ),
                          onPressed: () {
                            if (selectedIndex > 0) {
                              setState(() {
                                selectedIndex--;
                                _pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              });
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.primary,
                          ),
                        ),
                      Spacer(
                        flex: selectedIndex == 0 ? 2 : 1,
                      ),
                      ...List.generate(
                        onboardingData.length,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * .015,
                          ),
                          width: screenSize.width * .035,
                          height: screenSize.width * .035,
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? AppColors.primary
                                : AppColors.primary.withOpacity(.3),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      if (selectedIndex == 0)
                        SizedBox(
                          width: screenSize.width * 0.04,
                        ),
                      const Spacer(),
                      IconButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            AppColors.primary,
                          ),
                        ),
                        onPressed: () {

                           if (selectedIndex < onboardingData.length - 1) { 
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                            setState(() {});
                          }
                            selectedIndex++;

                          if (selectedIndex == onboardingData.length ) {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRoutes.signupScreen,
                              (route) => false,
                            );
                          }
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.06,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: PageView.builder(
          controller: _pageController,
          itemCount: onboardingData.length,
          onPageChanged: (s) {
            selectedIndex = s;
            setState(() {});
          },
          itemBuilder: (context, index) => Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: screenSize.height * 0.02,
                  left: screenSize.height * 0.02,
                  top: screenSize.height * 0.03,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: screenSize.height * 0.02,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.03,
                    ),
                    child: Image.asset(
                      onboardingData[index].image,
                      width: screenSize.width / 1.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
