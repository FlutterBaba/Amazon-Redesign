import 'package:amazon_redesign/data/data.dart';
import 'package:flutter/material.dart';

class RecommondedProduct extends StatelessWidget {
  final String name;
  final String image;
  final int price;
  final Function()? onTap;

  const RecommondedProduct({
    Key? key,
    required this.image,
    required this.name,
    required this.onTap,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.3,
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: AppColors.KWhite,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xff37475A).withOpacity(0.2),
              blurRadius: 20.0,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              scale: 3,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xff232F3E),
                  ),
                ),
                Text(
                  "*****",
                  style: TextStyle(
                    color: AppColors.KpColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("\$$price"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
