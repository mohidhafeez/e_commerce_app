import 'package:e_commerce_app/views/pages/Curated%20Store/curated_store.dart';
import 'package:e_commerce_app/views/pages/filter/filter_screen.dart';
import 'package:e_commerce_app/views/pages/home/bottom_navbar.dart';
import 'package:e_commerce_app/views/pages/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/size_config.dart';

void main() {
  //BISMILLAH
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(
                textTheme: const TextTheme(),
                fontFamily: 'Poppins',
                scaffoldBackgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              home: FilterScreen(),
            );
          },
        );
      },
    );
  }
}
