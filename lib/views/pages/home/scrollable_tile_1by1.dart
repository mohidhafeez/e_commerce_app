import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class ScrollableTile extends StatefulWidget {
  final String name;
  final String image;
  final String storeName;
  final double rating;
  final int reviews;
  ScrollableTile(
      {super.key,
      required this.name,
      required this.image,
      required this.rating,
      required this.reviews,
      required this.storeName});

  @override
  State<ScrollableTile> createState() => _ScrollableTileState();
}

class _ScrollableTileState extends State<ScrollableTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
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
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1,
          ),
          Text(
            widget.name,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 0.5,
          ),
          Text(
            widget.storeName,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 0.5,
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 15,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 1,
              ),
              Text(
                widget.rating.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 1,
              ),
              Text(
                "(${widget.reviews} Reviews)",
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
