import 'package:food_delivery_app_ui/data/food.dart';

class Restaurant {
  final String imageUrl;
  final String name;
  final String description;
  final String address;
  final double rating;
  final List<Food> menu;

  Restaurant({
    this.imageUrl,
    this.name,
    this.description,
    this.address,
    this.rating,
    this.menu,
  });
}
