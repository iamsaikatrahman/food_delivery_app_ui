import 'package:food_delivery_app_ui/data/food.dart';
import 'package:food_delivery_app_ui/data/order.dart';

class User {
  final String name;
  final String imageUrl;
  final String mail;
  final String phone;
  final String address;
  final String birthdate;
  final String gender;
  final List<Order> orders;
  final List<Order> cart;
  final List<Food> wishlist;

  User({
    this.birthdate,
    this.gender,
    this.name,
    this.imageUrl,
    this.mail,
    this.orders,
    this.cart,
    this.wishlist,
    this.address,
    this.phone,
  });
}
