import 'package:amazon_redesign/data/data.dart';
import 'package:amazon_redesign/widget/appbar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MaterialButton(
            onPressed: () {},
            height: 50,
            minWidth: 160,
            color: Color(0xff232F3E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: Text(
              'ADD CART',
              style: TextStyle(
                color: AppColors.KWhite,
              ),
            ),
          ),
        ],
      ),
      appBar: appbar(isIcon: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Nova Scooter",
                        style: TextStyle(
                          fontSize: 27,
                          color: Color(0xff232F3E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$700",
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.KpColor,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xffC2C2c2),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add),
                                Text("1"),
                                Icon(Icons.remove),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Image.asset("images/image2.png"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Battery",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff232f3e),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "4 Hours",
                            style: TextStyle(
                              color: Color(0xffC8C8C8),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Kilometer",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff232f3e),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "12 km",
                            style: TextStyle(
                              color: Color(0xffC8C8C8),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Rides",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff232f3e),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "4",
                            style: TextStyle(
                              color: Color(0xffC8C8C8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "And going out to meet the sunlight and fresh air, seeing all the people and the scenery It doesn't matter where you're coming from or where you're going all that matters is simple",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff8F8F8F),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
