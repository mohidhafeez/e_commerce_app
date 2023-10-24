import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class RecentSearchTile extends StatefulWidget {
  const RecentSearchTile({super.key});

  @override
  State<RecentSearchTile> createState() => _RecentSearchTileState();
}

class _RecentSearchTileState extends State<RecentSearchTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 7,
      width: SizeConfig.widthMultiplier * 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Icon(
                  Icons.access_time_sharp,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text("Nike"),
              ],
            ),
          ),
          Icon(Icons.close)
        ],
      ),
    );
  }
}
