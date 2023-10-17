import 'package:e_commerce_app/utils/size_config.dart';
import 'package:e_commerce_app/views/pages/google_map/google_map_screen.dart';
import 'package:e_commerce_app/views/pages/home/home_view.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({
    super.key,
  });

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  List<String> navIcon = [
    'assets/icons/bag.png',
    'assets/icons/settings.png',
    'assets/icons/navLocation.png',
    'assets/icons/circleStar.png',
  ];

  final List<Widget> screens = [
    const HomeScreenView(),
    const GoogleMapScreen(),
    const GoogleMapScreen(),
    const GoogleMapScreen(),
    const GoogleMapScreen()
  ];
  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      extendBody: true,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
              backgroundColor: const Color(0xff7496C2),
              onPressed: () {
                updateIndex(0);
              },
              child: Image.asset(
                'assets/images/Home.png',
                height: 50,
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 5,
              vertical: SizeConfig.heightMultiplier * 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    navIcon[0],
                    scale: 3,
                  )),
              IconButton(onPressed: () {}, icon: Image.asset(navIcon[1])),
              SizedBox(
                width: SizeConfig.widthMultiplier * 15,
              ),
              IconButton(
                  onPressed: () {
                    updateIndex(2);
                  },
                  icon: Image.asset(
                    navIcon[2],
                    scale: 3,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    navIcon[3],
                    scale: 3,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
