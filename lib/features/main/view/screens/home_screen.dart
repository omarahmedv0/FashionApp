import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/main/view/screens/category_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/product_details.dart';
import 'package:ecommerce_app/features/main/view_model/models/category_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> banners = [
    ImageAssetsManager.banner3,
    ImageAssetsManager.banner1,
    ImageAssetsManager.banner2,
  ];
  List<CategoryModel> categoriesData = [];
  List<CategoryModel> flashSaleCategory = [];
  int categorySelected = 0;
  @override
  void initState() {
    categoriesData = [
      CategoryModel(
        id: 1,
        image: ImageAssetsManager.shirtImage,
        name: 'T-Shirt',
      ),
      CategoryModel(
        id: 2,
        image: ImageAssetsManager.pantImage,
        name: 'Pant',
      ),
      CategoryModel(
        id: 3,
        image: ImageAssetsManager.dressImage,
        name: 'Dress',
      ),
      CategoryModel(
        id: 4,
        image: ImageAssetsManager.jacketImage,
        name: 'Jacket',
      ),
    ];
    flashSaleCategory = [
      CategoryModel(
        id: 1,
        image: '',
        name: 'All',
      ),
      CategoryModel(
        id: 2,
        image: '',
        name: 'Newest',
      ),
      CategoryModel(
        id: 3,
        image: '',
        name: 'Poular',
      ),
      CategoryModel(
        id: 4,
        image: '',
        name: 'Man',
      ),
      CategoryModel(
        id: 5,
        image: '',
        name: 'Woman',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: screenSize.width * .04,
              left: screenSize.width * .04,
              top: screenSize.height * .02,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: AppFonts.getCaptionFont(context),
                    ),
                    SizedBox(
                      height: screenSize.height * .005,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          IconAssetsManager.locationIcon,
                          color: AppColors.primary,
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: screenSize.width * .008,
                        ),
                        Text(
                          'New york, USA',
                          style: AppFonts.getTitleSmallFont(context),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.notificationScreen,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(180)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        IconAssetsManager.notifyIcon,
                        color: Colors.black,
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: screenSize.width * .04,
              left: screenSize.width * .04,
              top: screenSize.height * .02,
            ),
            child: Row(
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
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.searchScreen,
                    );
                  },
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
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5.2,
            child: PageView.builder(
              onPageChanged: (value) {
                selectedIndex = value;
                setState(() {});
              },
              itemCount: banners.length,
              controller: PageController(
                viewportFraction: 1,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    child: Image.asset(
                      banners[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: screenSize.height * .01,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                banners.length,
                (i) => AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 350,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: selectedIndex == i
                        ? AppColors.primary
                        : AppColors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(
                      180,
                    ),
                  ),
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
                  children: [
                    Text(
                      'Category',
                      style: AppFonts.getTitleMidFont(
                        context,
                        fontColor: Colors.black,
                      ),
                    ),
                    Text(
                      'See All',
                      style: AppFonts.getCaptionFont(
                        context,
                        fontSize: screenSize.width * .05,
                        fontColor: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.width * 0.015,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      width: screenSize.width * .07,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryScreen(
                              categoryData: categoriesData[index],
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 13,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryLight,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                categoriesData[index].image,
                                fit: BoxFit.fill,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            categoriesData[index].name,
                            style: AppFonts.getCaptionFont(
                              context,
                              fontColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    itemCount: categoriesData.length,
                  ),
                ),
              ],
            ),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Flash Sale',
                    style: AppFonts.getTitleMidFont(
                      context,
                      fontColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.width * 0.015,
                ),
                SizedBox(
                  height: screenSize.height * .04,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      width: screenSize.width * .02,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(.5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: categorySelected == index
                                ? AppColors.primary
                                : Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            flashSaleCategory[index].name,
                            style: AppFonts.getTitleSmallFont(
                              context,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontColor: categorySelected == index
                                  ? Colors.white
                                  : AppColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    itemCount: flashSaleCategory.length,
                  ),
                ),
                SizedBox(
                  height: screenSize.width * 0.04,
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
          SizedBox(
            height: screenSize.height * .1,
          ),
        ],
      ),
    );
  }
}

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ImageAssetsManager.productImage,
                width: double.infinity,
                height: screenSize.width * .4,
                fit: BoxFit.fill,
              ),
            ),
            IconButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                AppColors.primaryLight.withOpacity(.6),
              )),
              onPressed: () {},
              icon: Image.asset(
                IconAssetsManager.favoriteOutLinedIcon,
                width: screenSize.width * .05,
                height: screenSize.width * .05,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenSize.width * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: screenSize.width * .3,
              child: Text(
                'Brown Jacket',
                maxLines: 1,
                style: AppFonts.getTitleSmallFont(
                  context,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: screenSize.width * .05,
                ),
                Text(
                  '4.9',
                  style: AppFonts.getCaptionFont(
                    context,
                  ),
                ),
              ],
            ),
          ],
        ),
        /*  SizedBox(
          height: screenSize.width * 0.01,
        ), */
        Text(
          '\$83.99',
          style: AppFonts.getTitleSmallFont(
            context,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
