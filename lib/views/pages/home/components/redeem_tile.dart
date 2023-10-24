import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class RedeemTile extends StatelessWidget {
  const RedeemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 9,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(3, 3),
                      blurRadius: 50,
                      spreadRadius: 10)
                ]),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 22,
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
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            const Text(
                              "7800",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: SizeConfig.heightMultiplier * 4,
                    width: SizeConfig.widthMultiplier * 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber[100],
                    ),
                    child: const Center(
                      child: Text(
                        "REDEEM",
                        style: TextStyle(fontSize: 14, color: Colors.orange),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
