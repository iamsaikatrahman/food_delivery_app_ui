import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/data/food.dart';
import 'package:food_delivery_app_ui/widgets/productdetails.dart';

class NewPlates extends StatelessWidget {
  const NewPlates({
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
            "New Plates",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: _screenHight / 5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodlist.length,
            itemBuilder: (BuildContext context, int index) {
              Food recommended = foodlist[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => ProductDetails(
                        productsdetaisl: recommended,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 280,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            recommended.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                recommended.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                recommended.material,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "⭐ ${recommended.rating}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF41CC5D),
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    "\$${recommended.price}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF41CC5D),
                                      fontWeight: FontWeight.w800,
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
