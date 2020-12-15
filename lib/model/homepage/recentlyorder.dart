import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/data/order.dart';

class RecentlyOrder extends StatelessWidget {
  const RecentlyOrder({
    Key key,
    @required double screenHight,
  })  : _screenHight = screenHight,
        super(key: key);

  final double _screenHight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          child: Text(
            "Recently Order",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: _screenHight / 3 - 35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              Order recentOrder = currentUser.orders[index];
              return Container(
                margin: EdgeInsets.all(10),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(2, 4),
                        blurRadius: 6,
                        spreadRadius: -2),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          recentOrder.food.imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recentOrder.food.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              recentOrder.food.material,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.store_mall_directory_rounded,
                                  color: Color(0xFF41CC5D),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  recentOrder.restaurent.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xFF41CC5D),
                                ),
                                Flexible(
                                  child: Text(
                                    recentOrder.restaurent.address,
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Quantity: ${recentOrder.quantity.toString()}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "⭐ ${recentOrder.food.rating}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF41CC5D),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "\$${(recentOrder.food.price * recentOrder.quantity).toDouble().toStringAsFixed(2)}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF41CC5D),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
        ),
      ],
    );
  }
}
