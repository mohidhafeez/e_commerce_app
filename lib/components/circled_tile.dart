import 'package:e_commerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CircledTile extends StatefulWidget {
  String title;
  int i;
  Color bg;
  Color tc;
  Color bc;

  CircledTile(
      {super.key,
      required this.title,
      required this.i,
      required this.bg,
      required this.tc,
      required this.bc});

  @override
  State<CircledTile> createState() => _CircledTileState();
}

class _CircledTileState extends State<CircledTile> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: widget.bg,
          border: Border.all(
            width: 1,
            color: widget.bc,
          )),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
        child: Center(
            child: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w600, color: widget.tc),
        )),
      ),
    );
  }
}
