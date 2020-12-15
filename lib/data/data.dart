//Food

import 'package:food_delivery_app_ui/data/food.dart';
import 'package:food_delivery_app_ui/data/foodcategories.dart';
import 'package:food_delivery_app_ui/data/order.dart';
import 'package:food_delivery_app_ui/data/restaurent.dart';
import 'package:food_delivery_app_ui/data/user.dart';

final _food1 = Food(
  imageUrl: "assets/images/food (1).png",
  name: "Food One",
  material: "Chicken,Vegetable,Egg",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 28.0,
  rating: 4.5,
);
final _food2 = Food(
  imageUrl: "assets/images/food (2).png",
  name: "Food Two",
  material: "Rice,Vegetable,Meet",
  details:
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.",
  price: 20.0,
  rating: 3.5,
);
final _food3 = Food(
  imageUrl: "assets/images/food (3).png",
  name: "Food Three",
  material: "chicken,vegetable,salad",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 45.0,
  rating: 4.5,
);
final _food4 = Food(
  imageUrl: "assets/images/food (4).png",
  name: "Food Four",
  material: "Chicken,Vegetable,Egg",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 28.0,
  rating: 4.5,
);
final _food5 = Food(
  imageUrl: "assets/images/food (5).png",
  name: "Food Five",
  material: "chicken,vegetable,salad",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 18.0,
  rating: 4.2,
);
final _food6 = Food(
  imageUrl: "assets/images/food (6).png",
  name: "Food Six",
  material: "tomato, onion, pepper, radish, jicama",
  details:
      "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  price: 45.0,
  rating: 4.0,
);
final _food7 = Food(
  imageUrl: "assets/images/food (7).png",
  name: "Food Seven",
  material: "lemon juice, olive oil, pomegranate juice",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 56.0,
  rating: 4.5,
);
final _food8 = Food(
  imageUrl: "assets/images/food (8).png",
  name: "Food Eight",
  material: "Toss jicama, red pepper, mango",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 82.0,
  rating: 4.5,
);
final _food9 = Food(
  imageUrl: "assets/images/food (9).png",
  name: "Food Nine",
  material: "Stir cilantro, lime juice, honey, salt",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 35.0,
  rating: 3.2,
);
final _food10 = Food(
  imageUrl: "assets/images/food (10).png",
  name: "Food Ten",
  material: "combine cactus, tomatoes, onions, jalapenos",
  details:
      "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
  price: 75.0,
  rating: 4.4,
);

final List<Food> foodlist = [
  _food1,
  _food2,
  _food3,
  _food4,
  _food5,
  _food6,
  _food7,
  _food8,
  _food9,
  _food10,
];

//Food Categories
final List<Food> categoriesfoodOne = [
  _food1,
  _food3,
  _food5,
  _food9,
  _food6,
  _food4
];
final List<Food> categoriesfoodTwo = [
  _food2,
  _food3,
  _food4,
  _food7,
  _food8,
  _food10
];
final List<Food> categoriesfoodThree = [
  _food10,
  _food2,
  _food6,
  _food8,
  _food5,
  _food4,
  _food3
];
final List<Food> categoriesfoodFour = [
  _food2,
  _food3,
  _food4,
  _food7,
  _food8,
  _food10
];
final List<Food> categoriesfoodFive = [
  _food4,
  _food5,
  _food9,
  _food10,
  _food8,
  _food1
];
final List<Food> categoriesfoodSix = [
  _food10,
  _food8,
  _food9,
  _food1,
  _food5,
  _food2,
  _food3
];
final List<Food> categoriesfoodSeven = [
  _food4,
  _food9,
  _food10,
  _food3,
  _food8,
  _food10
];

//Resturant
final _restaurant1 = Restaurant(
  imageUrl: "assets/images/restaurant (1).jpg",
  name: "Restaurant1",
  description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.",
  address: "1377 Twin Willow Lane,Hamlet,NC",
  rating: 4.5,
  menu: [_food3, _food6, _food10, _food2, _food5],
);
final _restaurant2 = Restaurant(
  imageUrl: "assets/images/restaurant (2).jpg",
  name: "Restaurant2",
  description: "All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
  address: "3278 Sugarfoot Lane,Lafayette,IN",
  rating: 4.3,
  menu: [_food1, _food5, _food4, _food9, _food6],
);
final _restaurant3 = Restaurant(
  imageUrl: "assets/images/restaurant (3).jpg",
  name: "Restaurant3",
  description: "It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.",
  address: "1399 Pointe Lane,Tamarac,FL",
  rating: 4.6,
  menu: [_food4, _food6, _food1, _food8, _food5],
);
final _restaurant4 = Restaurant(
  imageUrl: "assets/images/restaurant (4).jpg",
  name: "Restaurant4",
  description: "The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
  address: "3211 Patton Lane,TUCSON,AZ",
  rating: 3.8,
  menu: [_food9, _food7, _food3, _food2, _food10],
);
final _restaurant5 = Restaurant(
  imageUrl: "assets/images/restaurant (5).jpg",
  name: "Restaurant5",
  description: "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
  address: "759  Marion Drive,Tampa,FL",
  rating: 4.7,
  menu: [_food5, _food10, _food3, _food8, _food4],
);

final List<Restaurant> restaurent = [
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
  _restaurant5,
];

//user

final currentUser = User(
  name: "Barbara Swope",
  imageUrl: "assets/images/profile.png",
  mail: "barbaraswope@gmail.com",
  phone: "770-354-6605",
  address: "3706 Hanifan Lane, Roswell, GA",
  birthdate: "3/24/1995",
  gender: "Male",
  wishlist: [_food3, _food5, _food8, _food9, _food1, _food10],
  orders: [
    Order(
      date: "Nov 10,2020",
      food: _food5,
      restaurent: _restaurant3,
      quantity: 1,
      status: "Compeleted",
    ),
    Order(
      date: "Dec 01,2020",
      food: _food9,
      restaurent: _restaurant4,
      quantity: 5,
      status: "Compeleted",
    ),
    Order(
      date: "Nov 8,2020",
      food: _food4,
      restaurent: _restaurant2,
      quantity: 2,
      status: "Compeleted",
    ),
  ],
  cart: [
    Order(
      date: "Dec 10 ,2020",
      food: _food4,
      restaurent: _restaurant2,
      quantity: 3,
    ),
    Order(
      date: "Dec 10 ,2020",
      food: _food9,
      restaurent: _restaurant2,
      quantity: 3,
    ),
    Order(
      date: "Dec 10 ,2020",
      food: _food8,
      restaurent: _restaurant5,
      quantity: 1,
    ),
    Order(
      date: "Dec 10 ,2020",
      food: _food1,
      restaurent: _restaurant3,
      quantity: 1,
    ),
  ],
);
