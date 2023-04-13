import 'package:flutter/material.dart';
import 'package:proje1/categories.dart';
import 'package:proje1/components/bottomNavigation.dart';
import 'package:proje1/components/header.dart';

class FavoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(children: [
                    //header
                    header("Favoriler", context),
                    SizedBox(height: 32),

                    //içerikler
                  ]
                  )
              )
            ]
            )
        ),
            bottomNavigationBar: bottomNavigationBar("search")
    );
  }
}