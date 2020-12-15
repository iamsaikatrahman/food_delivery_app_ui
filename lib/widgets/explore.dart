import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/model/explorepage/categoriesFive.dart';
import 'package:food_delivery_app_ui/model/explorepage/categoriesFour.dart';
import 'package:food_delivery_app_ui/model/explorepage/categoriesOne.dart';
import 'package:food_delivery_app_ui/model/explorepage/categoriesSeven.dart';
import 'package:food_delivery_app_ui/model/explorepage/categoriesSix.dart';
import 'package:food_delivery_app_ui/model/explorepage/categoriesThree.dart';
import 'package:food_delivery_app_ui/model/explorepage/categoriesTwo.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 5,
            indicatorColor: Colors.white70,
            tabs: [
              Tab(
                child: Text(
                  "Categories1",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Categories2",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Categories3",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Categories4",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Categories5",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Categories6",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Categories7",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          title: Text('Explore'),
          backgroundColor: Color(0xFF41CC5D),
        ),
        body: TabBarView(
          children: [
            CategoriesOne(screenHeight: _screenHeight),
            CategoriesTwo(screenHeight: _screenHeight),
            CategoriesThree(screenHeight: _screenHeight),
            CategoriesFour(screenHeight: _screenHeight),
            CategoriesFive(screenHeight: _screenHeight),
            CategoriesSix(screenHeight: _screenHeight),
            CategoriesSeven(screenHeight: _screenHeight),
          ],
        ),
      ),
    );
  }
}
