import 'package:e_commerce_app/components/circled_tile.dart';
import 'package:e_commerce_app/constants/colors.dart';
import 'package:e_commerce_app/constants/icons.dart';
import 'package:e_commerce_app/utils/size_config.dart';
import 'package:e_commerce_app/views/pages/Search/components/recent_search_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(CupertinoIcons.back),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search a curated store",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    ),
                    IconButton(
                        onPressed: () => showModalBottomSheet(
                            backgroundColor: Colors.white,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            context: context,
                            builder: (BuildContext context) {
                              return Helo();
                            }),
                        icon: Image.asset(
                          AppIcons.filter,
                          height: SizeConfig.imageSizeMultiplier * 6,
                        ))
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 5),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 4,
                        bottom: SizeConfig.heightMultiplier * 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Search",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          "CLEAR ALL",
                          style: TextStyle(color: Color(0xffB7B7B7)),
                        ),
                      ],
                    ),
                  ),
                  //tiles
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  //tiles
                  RecentSearchTile(),
                  RecentSearchTile(),
                  RecentSearchTile(),
                  RecentSearchTile(),
                  RecentSearchTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Helo extends StatefulWidget {
  const Helo({
    super.key,
  });

  @override
  State<Helo> createState() => _HeloState();
}

List<String> gender = ["Men", "Women", "Unisex"];
List<String> categories = [
  "Clothes",
  "Electronics",
  "Toys",
  "Shoes",
  "Watches"
];

class _HeloState extends State<Helo> {
  final List<String> rateTypes = [
    "Top Rated",
    "Lowest Rated",
    "Highest",
    "Medium"
  ];
  List<int> genderIndex = [];
  List<int> catagoryIndex = [];
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 80,
      width: SizeConfig.widthMultiplier * 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.widthMultiplier * 8,
                top: SizeConfig.heightMultiplier * 5),
            child: const Text(
              "Filter",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 8,
            ),
            child: const Text("Price Range",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 4,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 2,
            ),
            child: RangeSlider(
              activeColor: AppColors.lightGrey,
              inactiveColor: const Color.fromARGB(255, 232, 232, 232),
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(_currentRangeValues.start.toString(),
                  _currentRangeValues.end.toString()),
              values: _currentRangeValues,
              onChanged: (newValue) {
                setState(() {
                  _currentRangeValues = newValue;
                });
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 8,
            ),
            child: const Text("Sort By",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 8,
            ),
            child: SizedBox(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: rateTypes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedIndex == index) {
                              selectedIndex = -1;
                            } else {
                              selectedIndex = index;
                            }
                            print(selectedIndex);
                          });
                        },
                        child: CircledTile(
                          bc: selectedIndex == index
                              ? Colors.transparent
                              : Color(0xffE7E7E7),
                          tc: selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                          bg: selectedIndex == index
                              ? AppColors.lightGrey
                              : Colors.white,
                          i: index,
                          title: rateTypes[index],
                        ),
                      ),
                    );
                  }),
            ),
          ),
//
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 8,
            ),
            child: const Text("Gender",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),

          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 8,
            ),
            child: SizedBox(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gender.length,
                  itemBuilder: (context, index) {
                    // Color bgColor =
                    //     selectedFilter == index ? Colors.blue : Colors.white;

                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (genderIndex.contains(index)) {
                              genderIndex.remove(index);
                            } else {
                              genderIndex.add(index);
                            }
                            print(genderIndex);
                          });
                        },
                        child: CircledTile(
                          bc: genderIndex.contains(index)
                              ? Colors.transparent
                              : Color(0xffE7E7E7),
                          tc: genderIndex.contains(index)
                              ? Colors.white
                              : Colors.black,
                          bg: genderIndex.contains(index)
                              ? AppColors.lightGrey
                              : Colors.white,
                          i: index,
                          title: gender[index],
                        ),
                      ),
                    );
                  }),
            ),
          ),

          //
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 8,
            ),
            child: const Text("Catagories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 8,
            ),
            child: SizedBox(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (catagoryIndex.contains(index)) {
                              catagoryIndex.remove(index);
                            } else {
                              catagoryIndex.add(index);
                            }
                            print(catagoryIndex);
                          });
                        },
                        child: CircledTile(
                          tc: catagoryIndex.contains(index)
                              ? Colors.white
                              : Colors.black,
                          bc: catagoryIndex.contains(index)
                              ? Colors.transparent
                              : Color(0xffE7E7E7),
                          bg: catagoryIndex.contains(index)
                              ? AppColors.lightGrey
                              : Colors.white,
                          i: index,
                          title: categories[index],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Material(
            child: Container(
              height: SizeConfig.heightMultiplier * 11,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(4, 4.0),
                    blurRadius: 15,
                    spreadRadius: 2)
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 6.5,
                    width: SizeConfig.widthMultiplier * 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE7E7E7)),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "RESET",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4,
                  ),
                  Container(
                    height: SizeConfig.heightMultiplier * 6.5,
                    width: SizeConfig.widthMultiplier * 40,
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text("APPLY",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
