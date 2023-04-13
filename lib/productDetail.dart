import 'package:flutter/material.dart';
import 'package:proje1/components/header.dart';

class ProductDetailPage extends StatefulWidget {
  String productTitle;

  ProductDetailPage(this.productTitle);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late String selectedSize = "S";
  List<String> size = ["S", "M", "L"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(children: [
            //header
            header(widget.productTitle, context),
            SizedBox(height: 32),

           Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //ürün fotoğrafı
                    Center(child: Image.asset("assets/images/tshirt2.jpg")),

                    SizedBox(height: 30),
                    //ürün ismi
                    Text("LilZey Butik Baskılı Tshirt",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    SizedBox(height: 20),
                    //ürün fiyatı
                    Text("129.90 TL",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),

                    SizedBox(height: 20),
                    //ürün bedeni
                    Text("Beden",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                           color: Colors.black)),
                    SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: size.map((String letter) => sizeOption(
                          size: letter,selected: selectedSize == letter,
                          onTap:(){
                        setState(() {
                          selectedSize = letter;
                        });
                      })).toList(),
                    ),
                    SizedBox(height:32),
                    //sepete ekle butonu
                    GestureDetector(
                      onTap: () {
                        print("Ürün Sepete Eklendi");
                        print(
                            "Ürünün ismi: " + widget.productTitle);
                        print(
                            "Ürünün bedeni: "  + selectedSize.toString()+ " beden ");

                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.deepOrange,
                      ),
                        child: Text("Sepete Ekle",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                ],
                ),
              ),
          ])),
    ])));
  }
}

Widget sizeOption({required String size, required bool selected, required Function() onTap}) {
   return GestureDetector(
     onTap: onTap,
     child: Container(
       margin: EdgeInsets.only(right: 23),
       child: Text(
         "$size",
         style: TextStyle(color: selected ? Colors.deepOrange : Colors.black, fontSize: 16),
       ),
     ),
   );

}
