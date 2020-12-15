import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/food.dart';
import 'package:food_delivery_app_ui/model/explorepage/exploregridproducts.dart';
import 'package:food_delivery_app_ui/widgets/explore.dart';

class ExploreProductDetails extends StatefulWidget {
  final Food exploreproductsdetaisl;

  const ExploreProductDetails({Key key, this.exploreproductsdetaisl})
      : super(key: key);
  @override
  _ExploreProductDetailsState createState() => _ExploreProductDetailsState();
}

class _ExploreProductDetailsState extends State<ExploreProductDetails> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          height: 40,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Color(0xFF41CC5D),
            onPressed: () {},
            child: Text(
              "ADD TO CART",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF41CC5D),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => ExplorePage(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _screenHeight / 5,
              width: double.infinity,
              color: Color(0xFF41CC5D),
              child: Image.asset(widget.exploreproductsdetaisl.imageUrl),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.exploreproductsdetaisl.name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$${widget.exploreproductsdetaisl.price}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF41CC5D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            widget.exploreproductsdetaisl.material,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 65),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              buildOutlineButton(
                                icon: Icons.remove,
                                press: () {
                                  if (numOfItems > 1) {
                                    setState(() {
                                      numOfItems--;
                                    });
                                  }
                                },
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  // if our item is less  then 10 then  it shows 01 02 like that
                                  numOfItems.toString().padLeft(2, "0"),
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              buildOutlineButton(
                                  icon: Icons.add,
                                  press: () {
                                    setState(() {
                                      numOfItems++;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "⭐ ${widget.exploreproductsdetaisl.rating}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF41CC5D),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.exploreproductsdetaisl.details,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "More Like This",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ExploreGridProducts(screenHeight: _screenHeight)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

SizedBox buildOutlineButton({IconData icon, Function press}) {
  return SizedBox(
    width: 25,
    height: 22,
    child: Container(
      color: Color(0xFF41CC5D),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
          // side: BorderSide(
          //   color: Color(0xFF19532F),
          // ),
        ),
        onPressed: press,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    ),
  );
}
