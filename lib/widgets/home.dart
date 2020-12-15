import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/model/homepage/customdrawer.dart';
import 'package:food_delivery_app_ui/model/homepage/nearbyrestaurant.dart';
import 'package:food_delivery_app_ui/model/homepage/newplates.dart';
import 'package:food_delivery_app_ui/model/homepage/recentlyorder.dart';
import 'package:food_delivery_app_ui/model/homepage/recommended.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF41CC5D),
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey.withOpacity(0.5),
              backgroundImage: ExactAssetImage(currentUser.imageUrl),
              minRadius: 30,
              maxRadius: 30,
            ),
          ),
          SizedBox(width: 4),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "It Time to Eat",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Healthy Food",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFF41CC5D),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                              hintText: "Type what you want...",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF41CC5D),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.search),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RecentlyOrder(screenHight: _screenHight),
            RecommendedProducts(screenHight: _screenHight),
            NewPlates(screenHight: _screenHight),
            NearbyRestaurant(),
          ],
        ),
      ),
    );
  }
}
