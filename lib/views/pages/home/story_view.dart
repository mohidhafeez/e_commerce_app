import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/Model.dart';

class StoryView extends StatefulWidget {
  const StoryView({super.key});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: SizedBox(
        height: SizeConfig.heightMultiplier * 10,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          // shrinkWrap: true,
          itemCount: imageURLs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff7496C2),
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    imageURLs[index],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
