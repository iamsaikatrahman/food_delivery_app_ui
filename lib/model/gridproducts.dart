import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/data/food.dart';
import 'package:food_delivery_app_ui/widgets/productdetails.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({
    Key key,
    @required double screenHeight,
  })  : _screenHeight = screenHeight,
        super(key: key);

  final double _screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
       // horizontal: 16,
        vertical: 10,
      ),
      child: Container(
        width: double.infinity,
        height: _screenHeight,
        child: StaggeredGridView.countBuilder(
          scrollDirection: Axis.vertical,
          crossAxisCount: 4,
          itemCount: foodlist.length,
          itemBuilder: (BuildContext context, int index) {
            Food gridproducts = foodlist[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      productsdetaisl: gridproducts,
                    ),
                  ),
                );
              },
              child: Container(
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
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF41CC5D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          gridproducts.imageUrl,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            gridproducts.name,
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xFF19532F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            gridproducts.material,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "⭐ ${gridproducts.rating}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF41CC5D),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "\$${gridproducts.price}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF41CC5D),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 15.0,
        ),
      ),
    );
  
  }
}
