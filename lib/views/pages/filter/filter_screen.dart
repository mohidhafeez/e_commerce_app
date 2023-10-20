import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return Helo();
              }),
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.amber),
            child: Center(child: Text("OPEN")),
          ),
        ),
      ),
    );
  }
}

class Helo extends StatefulWidget {
  const Helo({
    super.key,
  });

  // final RangeValues _currentRangeValues;

  @override
  State<Helo> createState() => _HeloState();
}

class _HeloState extends State<Helo> {
  RangeValues _currentRangeValues = RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 80,
      width: SizeConfig.widthMultiplier * 100,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 20,
          ),
          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 100,
            divisions: 100,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          )
        ],
      ),
    );
  }
}
