import 'package:e_commerce_app/components/custom_appbar.dart';
import 'package:e_commerce_app/constants/colors.dart';
import 'package:e_commerce_app/constants/icons.dart';
import 'package:e_commerce_app/models/Model.dart';
import 'package:e_commerce_app/utils/size_config.dart';
import 'package:e_commerce_app/views/pages/home/scrollable_tile_1by1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CuratedStore extends StatefulWidget {
  const CuratedStore({super.key});

  @override
  State<CuratedStore> createState() => _CuratedStoreState();
}

class _CuratedStoreState extends State<CuratedStore> {
  List<String> categoryNames = [
    "Food",
    "Organic",
    "Electronic",
    "Arts",
    "Gaming",
    "Kitchen",
    "Clothes",
  ];
  List<Icon> categoryIcons = [
    Icon(Icons.food_bank_outlined),
    Icon(Icons.pan_tool),
    Icon(Icons.speaker_group_outlined),
    Icon(Icons.edit),
    Icon(Icons.gamepad),
    Icon(Icons.fork_left_outlined),
    Icon(Icons.shopping_cart_rounded),
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppIcons.search,
                  height: SizeConfig.imageSizeMultiplier * 6,
                )),
          )
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          CupertinoIcons.back,
          color: Colors.black,
        ),
        title: const Text(
          "Curated Store",
          style: TextStyle(color: AppColors.primaryGrey, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Text("Categories",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.forward,
                    size: 22,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 12,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryNames.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Container(
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    AppColors.lightGrey.withOpacity(0.3),
                                radius: 25,
                                child: categoryIcons[index]),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 20,
                              child: Text(
                                categoryNames[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3.5),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                children: [
                  ...List.generate(
                      shoesDetails.length,
                      (index) => ScrollableTile(
                          name: shoesDetails[index].brandName,
                          image: shoesDetails[index].imageUrl,
                          rating: shoesDetails[index].rating,
                          reviews: shoesDetails[index].reviews,
                          storeName: shoesDetails[index].storeName))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
