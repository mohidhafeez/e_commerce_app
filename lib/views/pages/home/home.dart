import 'package:e_commerce_app/components/custom_appbar.dart';
import 'package:e_commerce_app/constants/icons.dart';
import 'package:e_commerce_app/models/Model.dart';
import 'package:e_commerce_app/utils/size_config.dart';
import 'package:e_commerce_app/views/pages/home/components/redeem_tile.dart';
import 'package:e_commerce_app/views/pages/home/components/slider_view.dart';
import 'package:e_commerce_app/views/pages/home/scrollable_tile_1by1.dart';
import 'package:e_commerce_app/views/pages/home/story_view.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({
    super.key,
  });

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  List<String> iconPath = [
    'assets/icons/shirt 1.png',
    'assets/icons/dribbble 1.png',
    'assets/icons/speaker 1.png',
    'assets/icons/watch 1.png',
    'assets/icons/timer 1.png',
  ];
  List<String> categoryName = [
    "Clothes",
    "Sports",
    "Electronic",
    "Watches",
    "Stop",
  ];
  List<int> totalItems = [500, 400, 600, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      drawer: const Drawer(),
      appBar: const PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight), // Adjust the height as needed
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StoryView(),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            const SliderView(),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Live Tracking",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        Container(
                          height: SizeConfig.heightMultiplier * 19,
                          width: SizeConfig.heightMultiplier * 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffE4EDF4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AppIcons.stopWatch,
                                          scale: 4,
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.heightMultiplier * 2,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "8:50 AM",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      1,
                                            ),
                                            const Text("Delivery Time"),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          AppIcons.location,
                                          scale: 4,
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.heightMultiplier * 2,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Gour City",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      1,
                                            ),
                                            const Text("Delivery Location"),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                Container(
                                  height: SizeConfig.heightMultiplier * 08,
                                  width: SizeConfig.widthMultiplier * 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('assets/images/map.png'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        //Catogies list
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "SEE ALL",
                              style: TextStyle(color: Color(0xffB7B7B7)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //catogires list
            SizedBox(
              height: SizeConfig.heightMultiplier * 16,
              width: SizeConfig.widthMultiplier * 100,
              // color: Colors.amber,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: iconPath.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: SizedBox(
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:
                                  const Color(0xff7496C2).withOpacity(0.2),
                              child: Image.asset(
                                iconPath[index],
                                scale: 4,
                              )),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                          Text(
                            categoryName[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Text(
                            "${totalItems[index]} item",
                            style: const TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            //after cateogies list
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RedeemTile(),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  //Curated Stores
                  const Text(
                    "Curated Stores",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  const Text(
                    "Trending",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // row of shoes collection

                  SizedBox(
                    height: SizeConfig.heightMultiplier * 31.5,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: shoesDetails.length,
                      itemBuilder: ((context, index) {
                        return ScrollableTile(
                            name: shoesDetails[index].brandName,
                            image: shoesDetails[index].imageUrl,
                            rating: shoesDetails[index].rating,
                            reviews: shoesDetails[index].reviews,
                            storeName: shoesDetails[index].storeName);
                      }),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  const Text(
                    "Special For You",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 31.5,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: storeDetails.length,
                      itemBuilder: ((context, index) {
                        return ScrollableTile(
                            name: storeDetails[index].brandName,
                            image: storeDetails[index].imageUrl,
                            rating: storeDetails[index].rating,
                            reviews: storeDetails[index].reviews,
                            storeName: storeDetails[index].storeName);
                      }),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
