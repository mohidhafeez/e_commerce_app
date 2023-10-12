import 'package:e_commerce_app/components/custom_appbar.dart';
import 'package:e_commerce_app/constants/icons.dart';
import 'package:e_commerce_app/models/Model.dart';

import 'package:e_commerce_app/utils/size_config.dart';
import 'package:e_commerce_app/views/pages/home/components/slider_view.dart';
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
    "StopWatches",
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Live Tracking",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  Container(
                    height: SizeConfig.heightMultiplier * 23,
                    width: SizeConfig.heightMultiplier * 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE4EDF4)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    AppIcons.stopWatch,
                                    scale: 3,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "8:50 AM",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: SizeConfig.heightMultiplier * 1,
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
                                    scale: 3,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Gour City",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: SizeConfig.heightMultiplier * 1,
                                      ),
                                      const Text("Delivery Location"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 3,
                          ),
                          Container(
                            height: SizeConfig.heightMultiplier * 10,
                            width: SizeConfig.widthMultiplier * 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/map.png'),
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
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(color: Color(0xffB7B7B7)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 20,
                    width: SizeConfig.widthMultiplier * 100,
                    // color: Colors.amber,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: iconPath.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 35,
                                    backgroundColor: const Color(0xff7496C2)
                                        .withOpacity(0.2),
                                    child: Image.asset(
                                      iconPath[index],
                                      scale: 3,
                                    )),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                Text(
                                  categoryName[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
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
                  // points tiles
                  Container(
                    height: SizeConfig.heightMultiplier * 11,
                    width: SizeConfig.widthMultiplier * 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Color(0xffFFD000),
                                  child: Text("\$"),
                                ),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 2,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "My Points",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 1,
                                    ),
                                    const Text(
                                      "7800",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: SizeConfig.heightMultiplier * 5,
                            width: SizeConfig.widthMultiplier * 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.amber[100],
                            ),
                            child: const Center(
                              child: Text(
                                "REDEEM",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.orange),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  //Curated Stores
                  const Text(
                    "Curated Stores",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                    height: SizeConfig.heightMultiplier * 31,
                    width: SizeConfig.widthMultiplier * 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: shoesDetails.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox(
                                    height: SizeConfig.heightMultiplier * 20,
                                    width: SizeConfig.widthMultiplier * 40,
                                    child: Image.network(
                                      shoesDetails[index].imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 1,
                                ),
                                Text(
                                  shoesDetails[index].brandName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 0.5,
                                ),
                                Text(
                                  shoesDetails[index].storeName,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 0.5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 1,
                                    ),
                                    Text(
                                      shoesDetails[index].rating.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 1,
                                    ),
                                    Text(
                                      "(${shoesDetails[index].reviews} Reviews)",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
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
