import 'package:e_commerce_app/constants/icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({
    super.key,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Color(0xff536F95), fontSize: 16),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: Transform.scale(
          scale: 0.5,
          child: Image(
            image: AssetImage(
              AppIcons.drawer,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Transform.scale(
            scale: 0.7,
            child: Image(
              image: AssetImage(AppIcons.cart),
            ),
          ),
        ),
      ],
    );
  }
}
