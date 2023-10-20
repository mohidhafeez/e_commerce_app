import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class AnyTimeTile extends StatefulWidget {
  final String imagePath;
  final String title;
  final String storeName;
  final double rating;
  final int reviews;
  final int time;
  const AnyTimeTile(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.rating,
      required this.reviews,
      required this.storeName,
      required this.time});

  @override
  State<AnyTimeTile> createState() => _AnyTimeTileState();
}

class _AnyTimeTileState extends State<AnyTimeTile> {
  bool isSelected = false;
  void toggleImage() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 25,
              width: SizeConfig.widthMultiplier * 80,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                      widget.imagePath,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
                width: SizeConfig.widthMultiplier * 80,
                height: SizeConfig.heightMultiplier * 14,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Text(widget.storeName,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7395C2))),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 2,
                                ),
                                Text(widget.rating.toString(),
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700)),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 2,
                                ),
                                Text("(${widget.reviews} Reviews)",
                                    style: const TextStyle(
                                      fontSize: 13,
                                    )),
                              ],
                            ),
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "Open Till ",
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                  children: [
                                TextSpan(
                                    text: "${widget.time}pm",
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF7395C2),
                                    ))
                              ]))
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
        Positioned(
          top: SizeConfig.heightMultiplier * 1,
          left: SizeConfig.widthMultiplier * 65,
          child: IconButton(
              onPressed: () => toggleImage(),
              icon: isSelected
                  ? Container(
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 7,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                          child: Image.asset(
                        "assets/images/selectedheart.png",
                        height: SizeConfig.imageSizeMultiplier * 4,
                      )))
                  : Container(
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 7,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                          child: Image.asset(
                        "assets/images/heart.png",
                        height: SizeConfig.imageSizeMultiplier * 4,
                      )))),
        )
      ],
    );
  }
}
