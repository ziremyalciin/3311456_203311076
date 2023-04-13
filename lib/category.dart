import 'package:flutter/material.dart';
import 'package:proje1/categories.dart';
import 'package:proje1/components/bottomNavigation.dart';
import 'package:proje1/components/header.dart';
import 'package:proje1/productDetail.dart';

class CategoryPage extends StatelessWidget {
  String categoriestitle;
  CategoryPage(this.categoriestitle);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(children: [
          //header
          header(categoriestitle, context),
          SizedBox(height: 32),

          //içerikler
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContent(
                title: "Baskılı Tshirt",
                photourl: "assets/images/tshirt2.jpg"  ,
                price: "129.90",
                screenwidth: screenwidth,
                context: context
              ),
              buildContent(
                title: "Bisiklet Yaka Tshirt",
                photourl: "assets/images/tshirt3.jpg",
                price: "69.90",
                 screenwidth: screenwidth,
                context: context
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContent(
                title: "Oversize Tshirt",
                photourl: "assets/images/tshirt4.jpg",
                price: "99.90",
                  screenwidth: screenwidth,
                context: context
              ),
              buildContent(
                title: "Sırt Baskılı Tshirt",
                photourl: "assets/images/tshirt5.jpg",
                price: "119.90",
                  screenwidth: screenwidth,
                context: context
              ),
            ],
          ),
          //SizedBox(height: 100),
          bottomNavigationBar("search"),
        ]),
      ),
    ])),
    );
  }
}

Widget buildContent({
  required String title,
  required String photourl,
  required String price,
  required double screenwidth,
  context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)
      {
        return ProductDetailPage(title);
      }));
    },
    child: Container(
        width: (screenwidth - 60) * 0.5,
        padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Image.asset(photourl, width:100, height: 100),
                  SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        " $price TL",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ])),
  );
}