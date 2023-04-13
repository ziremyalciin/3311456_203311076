import 'package:flutter/material.dart';

Widget header(String title,context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 29),
      //Geri ikonu
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
  },
          child: Icon(Icons.arrow_back, color: Colors.black, size: 27)),

      //Kategoriler
      SizedBox(height: 24),

      Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black)),
    ],
  );
}
