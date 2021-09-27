import 'package:amazon_redesign/data/data.dart';
import 'package:amazon_redesign/pages/detail_page.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String name;
  final String image;
  final int price;

  const SingleProduct({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(20.0),
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
              scale: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Color(0xff232F3E),
                    ),
                  ),
                  Text(
                    "*******",
                    style: TextStyle(
                      color: AppColors.KpColor,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$$price"),
                      Images.shop,
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
