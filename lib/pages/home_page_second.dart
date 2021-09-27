import 'package:amazon_redesign/data/data.dart';
import 'package:amazon_redesign/widget/appbar.dart';
import 'package:amazon_redesign/widget/my_search.dart';
import 'package:amazon_redesign/widget/single_product.dart';
import 'package:flutter/material.dart';

class HomePageSecond extends StatelessWidget {
  const HomePageSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var conntroller;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.KWhite,
      appBar: appbar(),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          controller: conntroller,
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              height: size.height / 3 + 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MySearch(),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "images/ads1.png",
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff37475A).withOpacity(0.2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Wood",
                      ),
                      Text(
                        "⚫",
                        style: TextStyle(
                          color: Color(0xff232f3e),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Electronic",
                        style: TextStyle(color: Color(0xffAFAFAF)),
                      ),
                      Text(
                        "⚫",
                        style: TextStyle(
                          color: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Glasses",
                        style: TextStyle(color: Color(0xffAFAFAF)),
                      ),
                      Text(
                        "⚫",
                        style: TextStyle(
                          color: Colors.transparent,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: GridView.builder(
                controller: conntroller,
                shrinkWrap: true,
                itemCount: singleProductImgList.length,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  RecommondedModel data = singleProductImgList[index];

                  return SingleProduct(
                    image: data.image,
                    name: data.name,
                    price: data.price,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
