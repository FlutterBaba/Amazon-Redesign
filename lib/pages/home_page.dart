import 'package:amazon_redesign/data/data.dart';
import 'package:amazon_redesign/pages/home_page_second.dart';
import 'package:amazon_redesign/widget/appbar.dart';
import 'package:amazon_redesign/widget/my_search.dart';
import 'package:amazon_redesign/widget/recommonded_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.KWhiteColor,
      appBar: appbar(),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MySearch(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.1 - 20),
                    child: ListTile(
                      leading: Text(
                        "Featured Products",
                        style: TextStyle(
                          fontFamily: "CsFont",
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/image1.jpg"),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff37475A).withOpacity(0.4),
                              blurRadius: 20,
                              offset: const Offset(0, 15),
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      leading: Text(
                        "Recommonded",
                        style: TextStyle(
                          fontFamily: "CsFont",
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: RawScrollbar(
                      thickness: 10,
                      controller: _scrollController,
                      isAlwaysShown: true,
                      radius: Radius.circular(10.0),
                      thumbColor: Color(0xff232F3E),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: recommndedImgList.length,
                          itemBuilder: (context, index) {
                            RecommondedModel recommondedModel =
                                recommndedImgList[index];
                            return RecommondedProduct(
                              image: recommondedModel.image,
                              name: recommondedModel.name,
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => HomePageSecond()),
                                );
                              },
                              price: recommondedModel.price,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
