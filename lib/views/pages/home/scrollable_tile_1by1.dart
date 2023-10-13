import 'package:e_commerce_app/models/Model.dart';
import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class ScrollableTile extends StatefulWidget {
  const ScrollableTile({super.key});

  @override
  State<ScrollableTile> createState() => _ScrollableTileState();
}

class _ScrollableTileState extends State<ScrollableTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 31.5,
      width: SizeConfig.widthMultiplier * 100,
      // color: Colors.pink,
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
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.5,
                ),
                Text(
                  shoesDetails[index].storeName,
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
                      shoesDetails[index].rating.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1,
                    ),
                    Text(
                      "(${shoesDetails[index].reviews} Reviews)",
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
