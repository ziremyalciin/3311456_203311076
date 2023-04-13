import 'package:flutter/material.dart';
import 'package:proje1/categories.dart';
import 'package:proje1/components/bottomNavigation.dart';
import 'package:proje1/favories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //BAŞLIK
                  buildBaslik(),

                  //BANNER
                  buildBanner(),

                  //BUTONLAR
                  Padding(
                    padding: EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //ilk eleman
                        buildNavigation(
                            text: "Kategoriler",
                            icon: Icons.menu,
                            widget: CategoriesPage(),
                        context: context),
                        buildNavigation(
                            text: "Favoriler",
                            icon: Icons.favorite,
                            widget: FavoriesPage()),
                        buildNavigation(
                            text: "Çok Satanlar",
                            icon: Icons.people,
                            widget: widget),
                        buildNavigation(
                            text: "Size Özel",
                            icon: Icons.grade,
                            widget: widget),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  //SALES TİTLE
                  Text(
                    "İndirim",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                  SizedBox(height: 16),

                  //SALES ITEMS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Tshirt",
                          photourl: "assets/images/tshirt.jpeg",
                          discount: "-50%",
                          screenwidth: screenwidth,
                      ),
                      buildSalesItem(
                          text: "Sweathirt",
                          photourl: "assets/images/sweatshirt.jpg",
                          discount: "-50%",
                          screenwidth: screenwidth,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                        text: "Elbise",
                        photourl: "assets/images/elbise.jpg",
                        discount: "-50%",
                        screenwidth: screenwidth,
                      ),
                      buildSalesItem(
                        text: "Pantolon",
                        photourl: "assets/images/pantolon.jpg",
                        discount: "-50%",
                        screenwidth: screenwidth,
                      ),
                    ],
                   // SizedBox(height: 10),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
            bottomNavigationBar("home"),
          ],
        ),
      ),

    );
  }
}

Widget buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "Ana Sayfa",
      style: TextStyle(
        fontSize: 32,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
      padding: EdgeInsets.only(top: 24),
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LilZey Butik",
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Modanın Adresi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Image.asset("assets/images/logo1.jpg", width: 80, height: 80),
            ],
          )));
}

Widget buildNavigation({
  required String text,
  required IconData icon,
  required Widget widget,
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            icon,
            color: Colors.orangeAccent,
            size: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

Widget buildSalesItem({
  required String text,
  required String photourl,
  required String discount,
  required double screenwidth,
}) {
  return Container(
    width: (screenwidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.orangeAccent),
          child: Text(
            discount,
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ),
        SizedBox(height: 22),
        Center(child: Image.asset(photourl)),
        SizedBox(height: 22),
        Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.orangeAccent)
          ),
        ),
      ],
    ),
  );
}
