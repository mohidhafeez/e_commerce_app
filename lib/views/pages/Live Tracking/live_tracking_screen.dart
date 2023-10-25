import 'package:e_commerce_app/constants/colors.dart';

import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LiveTrackingScreen extends StatefulWidget {
  const LiveTrackingScreen({super.key});

  @override
  State<LiveTrackingScreen> createState() => _LiveTrackingScreenState();
}

class _LiveTrackingScreenState extends State<LiveTrackingScreen> {
  static const LatLng _pGooglePlex = LatLng(28.4212, 70.2989);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(CupertinoIcons.back),
            color: Colors.black,
          ),
          title: const Text(
            "Live Tracking",
            style: TextStyle(color: AppColors.primaryGrey, fontSize: 16),
          ),
        ),
        body: Stack(
          children: [
            const GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: _pGooglePlex, zoom: 13),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 5,
                      width: SizeConfig.widthMultiplier * 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Call Delivery Rider",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Image.asset(
                              'assets/icons/call.png',
                              height: SizeConfig.imageSizeMultiplier * 6,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 22,
                      width: SizeConfig.widthMultiplier * 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Delivery Address",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                const Text(
                                  "27 Independence Street, Sukamulyan,\n Cikembar, Sukabumi, Jawa Barat 43157",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff896C6B),
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                const Text(
                                  "Expected Delivery Time: 8:50 PM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                const Text(
                                  "\$3500",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 100,
                              child: VerticalDivider(
                                thickness: 1,
                                width: 10,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "View\nDetails",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryGrey),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
