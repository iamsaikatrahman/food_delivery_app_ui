import 'package:food_delivery_app_ui/data/food.dart';
import 'package:food_delivery_app_ui/data/restaurent.dart';

class Order {
  final Restaurant restaurent;
  final Food food;
  final String date;
  final String status;
  final int quantity;

  Order({
    this.restaurent,
    this.food,
    this.date,
    this.status,
    this.quantity,
  });
}
