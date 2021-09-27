import 'package:amazon_redesign/data/data.dart';
import 'package:flutter/material.dart';

AppBar appbar({bool isIcon = false, Function()? onTap}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: isIcon ? Images.arrowLeft : Images.menu,
      ),
    ),
    centerTitle: true,
    title: Images.amazonlogo,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Images.shop,
      ),
    ],
  );
}
