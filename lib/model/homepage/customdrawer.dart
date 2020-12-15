import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/data/data.dart';
import 'package:food_delivery_app_ui/widgets/carts.dart';
import 'package:food_delivery_app_ui/widgets/explore.dart';
import 'package:food_delivery_app_ui/widgets/profile.dart';
import 'package:food_delivery_app_ui/widgets/wishlist.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF41CC5D),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 45,
                    minRadius: 30,
                    backgroundColor: Colors.blueGrey.withOpacity(0.5),
                    backgroundImage: ExactAssetImage(currentUser.imageUrl),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${currentUser.name}",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${currentUser.mail}",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 20.0,
                color: Color(0xFF41CC5D),
              ),
              title: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ProfilePage(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 2,
                color: Colors.blueGrey.withOpacity(0.3),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag_rounded,
                size: 20.0,
                color: Color(0xFF41CC5D),
              ),
              title: Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CartPage(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 2,
                color: Colors.blueGrey.withOpacity(0.3),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.explore,
                size: 20.0,
                color: Color(0xFF41CC5D),
              ),
              title: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ExplorePage(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 2,
                color: Colors.blueGrey.withOpacity(0.3),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 20.0,
                color: Color(0xFF41CC5D),
              ),
              title: Text(
                'My Wishlist',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Wishlistpage(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 2,
                color: Colors.blueGrey.withOpacity(0.3),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 20.0,
                color: Color(0xFF41CC5D),
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
