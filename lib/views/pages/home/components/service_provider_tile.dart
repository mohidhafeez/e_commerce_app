import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class ServiceProviderTile extends StatefulWidget {
  final String title;
  final String imagePath;
  final double rating;
  final int reviews;

  const ServiceProviderTile(
      {super.key,
      required this.imagePath,
      required this.rating,
      required this.reviews,
      required this.title});

  @override
  State<ServiceProviderTile> createState() => _ServiceProviderTileState();
}

class _ServiceProviderTileState extends State<ServiceProviderTile> {
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
        Container(
          // height: SizeConfig.heightMultiplier * 20,
          width: SizeConfig.widthMultiplier * 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(widget.imagePath), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.7,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 12,
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1,
                    ),
                    Text(widget.rating.toString(),
                        style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1,
                    ),
                    Text(
                      "(${widget.reviews} Reviews)",
                      style: const TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier * 1,
          left: SizeConfig.widthMultiplier * 28,
          child: IconButton(
              onPressed: () => toggleImage(),
              icon: isSelected
                  ? Container(
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 7,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                          child: Image.asset(
                        "assets/images/selectedheart.png",
                        height: SizeConfig.imageSizeMultiplier * 4,
                      )))
                  : Container(
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 7,
                      decoration: const BoxDecoration(
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
