import 'package:e_commerce_app/models/Model.dart';
import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 25,
          width: SizeConfig.widthMultiplier * 100,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            controller: _pageController,
            itemCount: content.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(content[index].imageURL),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          content[index].tag.isEmpty
                              ? Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          SizeConfig.heightMultiplier * 1.7),
                                  child: const SizedBox(),
                                )
                              : Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          SizeConfig.widthMultiplier * 2,
                                      vertical:
                                          SizeConfig.heightMultiplier * 0.5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.blue),
                                  child: Text(
                                    content[index].tag,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Text(
                            content[index].title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Text(
                            content[index].price.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 170, // Adjust the top position as needed
          left: 0,
          right: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              content.length,
              (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: DotIndicator(
                  isActive: index == _pageIndex,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;

  DotIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 3,
      width: isActive ? 15 : 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isActive ? Colors.white : Colors.red),
    );
  }
}
