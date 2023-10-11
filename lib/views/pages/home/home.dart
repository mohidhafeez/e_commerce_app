import 'package:e_commerce_app/components/custom_appbar.dart';
import 'package:e_commerce_app/constants/icons.dart';
import 'package:e_commerce_app/models/slider.dart';
import 'package:e_commerce_app/models/story_images.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: SizeConfig.heightMultiplier * 15,
                    width: SizeConfig.widthMultiplier * 100,
                    // color: Colors.amber,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                radius: 35,
                                backgroundColor:
                                    const Color(0xff7496C2).withOpacity(0.2),
                                child: Image.asset(
                                  'assets/icons/shirt 1.png',
                                  scale: 3,
                                )),
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
