import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/data/food.dart';

class Wishlistpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF41CC5D),
        title: Text("Wishlist"),
      ),
      body: ListView.builder(
        itemCount: currentUser.wishlist.length,
        itemBuilder: (BuildContext context, int index) {
          Food wishlistfood = currentUser.wishlist[index];
          return Card(
            child: Container(
              padding: EdgeInsets.all(16),
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    offset: Offset(1, 3),
                    blurRadius: 6,
                    spreadRadius: -3,
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(wishlistfood.imageUrl),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          wishlistfood.name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          wishlistfood.material,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          wishlistfood.details,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                            //color: Colors.blueGrey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⭐ ${wishlistfood.rating}",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF41CC5D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$${wishlistfood.price.toStringAsFixed(2)}",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF41CC5D),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
